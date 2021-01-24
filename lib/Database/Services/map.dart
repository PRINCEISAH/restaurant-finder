import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:restaurant/utils/credentials.dart';
import 'package:http/http.dart' as http;

class PlacesRepository {
  Future<void> places() async {
    var url =
        "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=1500&type=restaurant&keyword=cruise&key=$PLACES_API_Key";

    var request = await http.get(url);

    var respons = json.decode(request.body);

    print(respons);
  }
}
