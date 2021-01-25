import 'package:geolocator/geolocator.dart';

class GetUserLocation {
  getCurrentLocation() async {
    Position geoposition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return geoposition;
  }
}
