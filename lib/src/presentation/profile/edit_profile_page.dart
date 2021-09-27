import 'package:auto_club/src/actions/auth/index.dart';
import 'package:auto_club/src/containers/auth/index.dart';
import 'package:auto_club/src/models/auth/index.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:auto_club/src/widgets/dynamicEditTextWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:geolocator/geolocator.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String _username;
  String _location;

  final Geolocator _geolocator = Geolocator()..forceAndroidLocationManager;
  Position _currentPosition;
  String _currentAddress;
  bool _checkBox = false;

  List<String> _cars;
  String _newCar;

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
        title: const Text('Edit Profile'),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: UserContainer(
              builder: (BuildContext context, AppUser user) {
                _cars = user.cars.split('/^/').sublist(0, user.cars.split('/^/').length - 1);
                return Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: const Text(
                          'Username',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                      ),
                      keyboardType: TextInputType.name,
                      initialValue: user.username,
                      onChanged: (String value) {
                        setState(() {
                          _username = value;
                        });
                      },
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter username';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                        child: const Text(
                          'Location',
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    if (_checkBox)
                      TextFormField(
                        key: Key(_currentAddress),
                        decoration: InputDecoration(
                          hintText: 'Location',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                        ),
                        keyboardType: TextInputType.name,
                        initialValue: _currentAddress,
                        onChanged: (String value) {
                          setState(() {
                            _location = value;
                          });
                        },
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter username';
                          }
                          return null;
                        },
                      ),
                    if (!_checkBox)
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Location',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                        ),
                        keyboardType: TextInputType.name,
                        initialValue: user.location,
                        onChanged: (String value) {
                          setState(() {
                            _location = value;
                          });
                        },
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter location';
                          }
                          return null;
                        },
                      ),
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
                          const Text(
                            'Use my location',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                            child: const Text(
                              'Cars',
                              style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Add a new car',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                      ),
                      keyboardType: TextInputType.name,
                      onChanged: (String value) {
                        setState(() {
                          _newCar = value;
                        });
                      },
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter a car';
                        }
                        return null;
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: FlatButton(
                        color: Colors.redAccent,
                        onPressed: () {
                          _username ??= user.username;
                          _location ??= user.location;
                          if (_checkBox) {
                            _location = _currentAddress;
                          }
                          StoreProvider.of<AppState>(context).dispatch(UpdateUsername(_username));
                          StoreProvider.of<AppState>(context).dispatch(UpdateLocation(_location));
                          _cars.add(_newCar);
                          String _carsToUpdate = '';
                          _cars.forEach((String _c) {_carsToUpdate = _carsToUpdate + _c + '/^/';} );
                          StoreProvider.of<AppState>(context).dispatch(UpdateCars(_carsToUpdate));
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Update profile',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
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
