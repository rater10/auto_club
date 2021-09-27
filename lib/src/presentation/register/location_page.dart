import 'package:auto_club/src/actions/actions.dart';
import 'package:auto_club/src/containers/auth/index.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/presentation/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:geolocator/geolocator.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final Geolocator _geolocator = Geolocator()..forceAndroidLocationManager;
  Position _currentPosition;
  String _currentAddress;
  bool _checkBox = false;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  void _getCurrentLocation() {
    _geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best).then((Position position) {
      setState(() {
        _currentPosition = position;
      });
      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }

  // ignore: always_declare_return_types
  _getAddressFromLatLng() async {
    try {
      List<Placemark> p =
          await _geolocator.placemarkFromCoordinates(_currentPosition.latitude, _currentPosition.longitude);
      final Placemark place = p[0];
      setState(() {
        _currentAddress = '${place.locality}, ${place.country}';
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location'),
        backgroundColor: Colors.redAccent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Builder(
              builder: (BuildContext context) {
                return Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 32.0),
                      child: const Text(
                        'Let other people know where you live',
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    if (_checkBox)
                      RegisterInfoContainer(
                        builder: (BuildContext context, RegisterInfo info) {
                          return Container(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: TextFormField(
                              key: Key(_currentAddress),
                              decoration: InputDecoration(
                                hintText: 'Location',
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                              ),
                              keyboardType: TextInputType.name,
                              initialValue: _currentAddress,
                              onChanged: (String value) {
                                StoreProvider.of<AppState>(context).dispatch(UpdateRegisterInfo(location: value));
                              },
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Please enter a location';
                                }

                                return null;
                              },
                            ),
                          );
                        },
                      ),
                    if (!_checkBox)
                      RegisterInfoContainer(builder: (BuildContext context, RegisterInfo info) {
                        return Container(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Location',
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                            ),
                            keyboardType: TextInputType.name,
                            onChanged: (String value) {
                              StoreProvider.of<AppState>(context).dispatch(UpdateRegisterInfo(location: value));
                            },
                          ),
                        );
                      }),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _checkBox,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _checkBox = !_checkBox;
                              });
                            },
                          ),
                          const Text('Use my location', style: TextStyle(fontSize: 16.0),),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: FlatButton(
                        color: Colors.redAccent,
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.ownedCars);
                        },
                        child: const Text(
                          'Continue',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Divider(),
                    Text.rich(
                      TextSpan(text: 'Already have an account? ', children: <TextSpan>[
                        TextSpan(
                            text: 'Login',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.popUntil(context, ModalRoute.withName(AppRoutes.home));
                              }),
                      ]),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
