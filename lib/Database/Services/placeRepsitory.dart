import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import 'package:restaurant/Database/Services/service.dart';
import 'package:restaurant/Database/model/place.dart';
import 'package:restaurant/utils/credentials.dart';
import 'package:http/http.dart' as http;

class PlacesRepository {
  GetUserLocation _userLocation = GetUserLocation();

  static List<PlaceDetail> placedetails = [];

  Future<List<PlaceDetail>> places() async {
    Position position = await _userLocation.getCurrentLocation();

    var url =
        "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=${position.latitude},${position.longitude}&radius=1500&type=restaurant&keyword=food&key=$PLACES_API_Key";

    var response = await http.get(url);
    List data = json.decode(response.body)["results"];
    List<PlaceDetail> places = [];

    data.forEach((f) => places.add(new PlaceDetail(f["place_id"], f["name"],
        f["icon"], f["rating"].toString(), f["vicinity"])));

    print(places);

    return places;
  }
}
