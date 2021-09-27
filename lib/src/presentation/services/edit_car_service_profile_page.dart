import 'package:auto_club/src/actions/auth/index.dart';
import 'package:auto_club/src/containers/auth/index.dart';
import 'package:auto_club/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:geolocator/geolocator.dart';

class EditCarServiceProfilePage extends StatefulWidget {
  const EditCarServiceProfilePage({Key key}) : super(key: key);

  @override
  _EditCarServiceProfilePageState createState() => _EditCarServiceProfilePageState();
}

class _EditCarServiceProfilePageState extends State<EditCarServiceProfilePage> {
  String _firstName;
  String _lastName;
  String _serviceName;
  bool _isServiceAvailable = false;
  String _serviceLocation;
  String _servicePhone;
  bool _isAutoElectricianService = false;
  bool _isCarBodyRepairsService = false;
  bool _isCarDealershipService = false;
  bool _isCarDiagnosticsService = false;
  bool _isCarInssuranceService = false;
  bool _isCarRentalService = false;
  bool _isDetailingService = false;
  bool _isEngineDecarbonizationService = false;
  bool _isParticleFilterCleaningService = false;
  bool _isServiceAndRepairs = false;
  bool _isTowingService = false;
  bool _isTuningService = false;
  bool _isVulcanisingService = false;
  bool _isWrappingService = false;
  String _serviceDescription;
  String _mondayServiceHours;
  String _tuesdayServiceHours;
  String _wednesdayServiceHours;
  String _thursdayServiceHours;
  String _fridayServiceHours;
  String _saturdayServiceHours;
  String _sundayServiceHours;

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
        title: const Text('Edit Car Service'),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: UserContainer(
              builder: (BuildContext context, AppUser user) {
                return Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                      child: const Text(
                        'Provide some information about your car service',
                        style: TextStyle(
                          // color: Colors.redAccent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: const Text(
                          'Service Name',
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
                        hintText: 'Add service name',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                      ),
                      keyboardType: TextInputType.name,
                      initialValue: user.serviceName ?? '',
                      onChanged: (String value) {
                        setState(() {
                          _serviceName = value;
                        });
                      },
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter service name';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                        child: const Text(
                          'Service Description',
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
                        hintText: 'Add service description',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                      ),
                      keyboardType: TextInputType.name,
                      initialValue: user.serviceDescription ?? '',
                      onChanged: (String value) {
                        setState(() {
                          _serviceDescription = value;
                        });
                      },
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter the service description';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                        child: const Text(
                          'Service Contact Phone',
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
                        hintText: 'Add service contact phone',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                      ),
                      keyboardType: TextInputType.phone,
                      initialValue: user.servicePhone ?? '',
                      onChanged: (String value) {
                        setState(() {
                          _servicePhone = value;
                        });
                      },
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter the service phone';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                        child: const Text(
                          'First Name',
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
                        hintText: 'Add your first name',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                      ),
                      keyboardType: TextInputType.name,
                      initialValue: user.firstName ?? '',
                      onChanged: (String value) {
                        setState(() {
                          _firstName = value;
                        });
                      },
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter first name';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                        child: const Text(
                          'Last Name',
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
                        hintText: 'Add your last name',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                      ),
                      keyboardType: TextInputType.name,
                      initialValue: user.lastName ?? '',
                      onChanged: (String value) {
                        setState(() {
                          _lastName = value;
                        });
                      },
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter last name';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                        child: const Text(
                          'Car Service location',
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
                          hintText: 'Service Location',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                        ),
                        keyboardType: TextInputType.name,
                        initialValue: _currentAddress,
                        onChanged: (String value) {
                          setState(() {
                            _serviceLocation = value;
                          });
                        },
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter service location';
                          }
                          return null;
                        },
                      ),
                    if (!_checkBox)
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Car Service Location',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                        ),
                        keyboardType: TextInputType.name,
                        initialValue: user.serviceLocation,
                        onChanged: (String value) {
                          setState(() {
                            _serviceLocation = value;
                          });
                        },
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Please enter service location';
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
                    Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                      child: const Text(
                        'Check what types of car services you offer',
                        style: TextStyle(
                          // color: Colors.redAccent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isAutoElectricianService,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _isAutoElectricianService = !_isAutoElectricianService;
                              });
                            },
                          ),
                          const Text(
                            'Auto Electrician',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isCarBodyRepairsService,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _isCarBodyRepairsService = !_isCarBodyRepairsService;
                              });
                            },
                          ),
                          const Text(
                            'Car Body Repairs',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isCarDealershipService,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _isCarDealershipService = !_isCarDealershipService;
                              });
                            },
                          ),
                          const Text(
                            'Car Dealership',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isCarDiagnosticsService,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _isCarDiagnosticsService = !_isCarDiagnosticsService;
                              });
                            },
                          ),
                          const Text(
                            'Car Diagnostics',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isCarInssuranceService,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _isCarInssuranceService = !_isCarInssuranceService;
                              });
                            },
                          ),
                          const Text(
                            'Car Insurance Service',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isCarRentalService,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _isCarRentalService = !_isCarRentalService;
                              });
                            },
                          ),
                          const Text(
                            'Car Rental',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isDetailingService,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _isDetailingService = !_isDetailingService;
                              });
                            },
                          ),
                          const Text(
                            'Detailing',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isEngineDecarbonizationService,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _isEngineDecarbonizationService = !_isEngineDecarbonizationService;
                              });
                            },
                          ),
                          const Text(
                            'Engine Decarbonization',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isParticleFilterCleaningService,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _isParticleFilterCleaningService = !_isParticleFilterCleaningService;
                              });
                            },
                          ),
                          const Text(
                            'Particle Filter Cleaning',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isServiceAndRepairs,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _isServiceAndRepairs = !_isServiceAndRepairs;
                              });
                            },
                          ),
                          const Text(
                            'Service & Repairs',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isTowingService,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _isTowingService = !_isTowingService;
                              });
                            },
                          ),
                          const Text(
                            'Towing Service',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isTuningService,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _isTuningService = !_isTuningService;
                              });
                            },
                          ),
                          const Text(
                            'Tuning',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isVulcanisingService,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _isVulcanisingService = !_isVulcanisingService;
                              });
                            },
                          ),
                          const Text(
                            'Vulcanising Service',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isWrappingService,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _isWrappingService = !_isWrappingService;
                              });
                            },
                          ),
                          const Text(
                            'Wrapping',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                      child: const Text(
                        'Let people know your car service daily program',
                        style: TextStyle(
                          // color: Colors.redAccent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                        child: const Text(
                          'Monday',
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
                        hintText: '09:00 - 17:00',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                      ),
                      keyboardType: TextInputType.name,
                      initialValue: user.mondayServiceHours ?? '',
                      onChanged: (String value) {
                        setState(() {
                          _mondayServiceHours = value;
                        });
                      },
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter the monday service hours';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                        child: const Text(
                          'Tuesday',
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
                        hintText: '09:00 - 17:00',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                      ),
                      keyboardType: TextInputType.name,
                      initialValue: user.tuesdayServiceHours ?? '',
                      onChanged: (String value) {
                        setState(() {
                          _tuesdayServiceHours = value;
                        });
                      },
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter the tuesday service hours';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                        child: const Text(
                          'Wednesday',
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
                        hintText: '09:00 - 17:00',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                      ),
                      keyboardType: TextInputType.name,
                      initialValue: user.wednesdayServiceHours ?? '',
                      onChanged: (String value) {
                        setState(() {
                          _wednesdayServiceHours = value;
                        });
                      },
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter the wednesday service hours';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                        child: const Text(
                          'Thursday',
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
                        hintText: '09:00 - 17:00',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                      ),
                      keyboardType: TextInputType.name,
                      initialValue: user.thursdayServiceHours ?? '',
                      onChanged: (String value) {
                        setState(() {
                          _thursdayServiceHours = value;
                        });
                      },
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter the thursday service hours';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                        child: const Text(
                          'Friday',
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
                        hintText: '09:00 - 17:00',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                      ),
                      keyboardType: TextInputType.name,
                      initialValue: user.fridayServiceHours ?? '',
                      onChanged: (String value) {
                        setState(() {
                          _fridayServiceHours = value;
                        });
                      },
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter the friday service hours';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                        child: const Text(
                          'Saturday',
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
                        hintText: '09:00 - 13:00',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                      ),
                      keyboardType: TextInputType.name,
                      initialValue: user.saturdayServiceHours ?? '',
                      onChanged: (String value) {
                        setState(() {
                          _saturdayServiceHours = value;
                        });
                      },
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter the saturday service hours';
                        }
                        return null;
                      },
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 16.0),
                        child: const Text(
                          'Sunday',
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
                        hintText: 'Closed',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
                      ),
                      keyboardType: TextInputType.name,
                      initialValue: user.sundayServiceHours ?? '',
                      onChanged: (String value) {
                        setState(() {
                          _sundayServiceHours = value;
                        });
                      },
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter the sunday service hours';
                        }
                        return null;
                      },
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                      child: const Text(
                        'Once your car service is available you become a verified user. This means you will have a check logo on your profile and you will appear with full name in your contacts chat list',
                        style: TextStyle(
                          // color: Colors.redAccent,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isServiceAvailable,
                            activeColor: Colors.redAccent,
                            onChanged: (bool value) {
                              setState(() {
                                _isServiceAvailable = !_isServiceAvailable;
                              });
                            },
                          ),
                          const Text(
                            'Is the service available ?',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: FlatButton(
                        color: Colors.redAccent,
                        onPressed: () {
                          _firstName ??= user.firstName;
                          _lastName ??= user.lastName;
                          _serviceName ??= user.serviceName;
                          _serviceLocation ??= user.serviceLocation;
                          if (_checkBox) {
                            _serviceLocation = _currentAddress;
                          }
                          _servicePhone ??= user.servicePhone;
                          _serviceDescription ??= user.serviceDescription;
                          _mondayServiceHours ??= user.mondayServiceHours;
                          _tuesdayServiceHours ??= user.tuesdayServiceHours;
                          _wednesdayServiceHours ??= user.wednesdayServiceHours;
                          _thursdayServiceHours ??= user.thursdayServiceHours;
                          _fridayServiceHours ??= user.fridayServiceHours;
                          _saturdayServiceHours ??= user.saturdayServiceHours;
                          _sundayServiceHours ??= user.sundayServiceHours;
                          
                          StoreProvider.of<AppState>(context).dispatch(UpdateFirstName(_firstName));
                          StoreProvider.of<AppState>(context).dispatch(UpdateLastName(_lastName));
                          StoreProvider.of<AppState>(context).dispatch(UpdateServiceName(_serviceName));
                          StoreProvider.of<AppState>(context).dispatch(UpdateIsServiceAvailable(_isServiceAvailable));
                          StoreProvider.of<AppState>(context).dispatch(UpdateServiceLocation(_serviceLocation));
                          StoreProvider.of<AppState>(context).dispatch(UpdateServicePhone(_servicePhone));
                          StoreProvider.of<AppState>(context).dispatch(UpdateIsAutoElectricianService(_isAutoElectricianService));
                          StoreProvider.of<AppState>(context).dispatch(UpdateIsCarBodyRepairsService(_isCarBodyRepairsService));
                          StoreProvider.of<AppState>(context).dispatch(UpdateIsCarDealershipService(_isCarDealershipService));
                          StoreProvider.of<AppState>(context).dispatch(UpdateIsCarDiagnosticsService(_isCarDiagnosticsService));
                          StoreProvider.of<AppState>(context).dispatch(UpdateIsCarInssuranceService(_isCarInssuranceService));
                          StoreProvider.of<AppState>(context).dispatch(UpdateIsCarRentalService(_isCarRentalService));
                          StoreProvider.of<AppState>(context).dispatch(UpdateIsDetailingService(_isDetailingService));
                          StoreProvider.of<AppState>(context).dispatch(UpdateIsEngineDecarbonizationService(_isEngineDecarbonizationService));
                          StoreProvider.of<AppState>(context).dispatch(UpdateIsParticleFilterCleaningService(_isParticleFilterCleaningService));
                          StoreProvider.of<AppState>(context).dispatch(UpdateIsServiceAndRepairs(_isServiceAndRepairs));
                          StoreProvider.of<AppState>(context).dispatch(UpdateIsTowingService(_isTowingService));
                          StoreProvider.of<AppState>(context).dispatch(UpdateIsTuningService(_isTuningService));
                          StoreProvider.of<AppState>(context).dispatch(UpdateIsVulcanisingService(_isVulcanisingService));
                          StoreProvider.of<AppState>(context).dispatch(UpdateIsWrappingService(_isWrappingService));
                          StoreProvider.of<AppState>(context).dispatch(UpdateServiceDescription(_serviceDescription));
                          StoreProvider.of<AppState>(context).dispatch(UpdateMondayServiceHours(_mondayServiceHours));
                          StoreProvider.of<AppState>(context).dispatch(UpdateTuesdayServiceHours(_tuesdayServiceHours));
                          StoreProvider.of<AppState>(context).dispatch(UpdateWednesdayServiceHours(_wednesdayServiceHours));
                          StoreProvider.of<AppState>(context).dispatch(UpdateThursdayServiceHours(_thursdayServiceHours));
                          StoreProvider.of<AppState>(context).dispatch(UpdateFridayServiceHours(_fridayServiceHours));
                          StoreProvider.of<AppState>(context).dispatch(UpdateSaturdayServiceHours(_saturdayServiceHours));
                          StoreProvider.of<AppState>(context).dispatch(UpdateSundayServiceHours(_sundayServiceHours));

                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Update car service profile',
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
