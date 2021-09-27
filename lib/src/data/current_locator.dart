import 'package:geolocator/geolocator.dart';

class CurrentLocator {
  CurrentLocator() {
    _getCurrentLocation();
  }

  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  Position _currentPosition;
  String _currentAddress;

  void _getCurrentLocation() {
    geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best).then((Position position) {
      _currentPosition = position;

      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }

  // ignore: always_declare_return_types
  _getAddressFromLatLng() async {
    try {
      List<Placemark> p =
          await geolocator.placemarkFromCoordinates(_currentPosition.latitude, _currentPosition.longitude);
      final Placemark place = p[0];
      _currentAddress = '${place.locality}, ${place.country}';
    } catch (e) {
      print(e);
    }
  }

  String get location {
    return _currentAddress;
  }
}
