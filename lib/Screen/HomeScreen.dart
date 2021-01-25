import 'package:flutter/material.dart';
import 'package:restaurant/Database/Services/placeRepsitory.dart';
import 'package:restaurant/Database/Services/service.dart';
import 'package:restaurant/Database/model/place.dart';
import 'package:restaurant/SizeConfiguration/SizeConfig.dart';
import 'package:restaurant/utils/colors.dart';
import 'package:restaurant/utils/credentials.dart';
import 'package:restaurant/widget/appbar.dart';
import 'package:restaurant/widget/restaurantCard.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: appbar(),
      backgroundColor: AppColors.backgroundcolor,
      body: Restaurant_Screen(),
    );
  }
}

class Restaurant_Screen extends StatefulWidget {
  @override
  _Restaurant_ScreenState createState() => _Restaurant_ScreenState();
}

class _Restaurant_ScreenState extends State<Restaurant_Screen> {
  PlacesRepository _placesRepository = PlacesRepository();
  List<PlaceDetail> place = [];
  @override
  void initState() {
    GetUserLocation().getCurrentLocation();
    PlacesRepository().places();
  }

  @override
  Widget build(BuildContext context) {
    print(place.length);
    return Center(
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, "currentlocation");
        },
        child: Text("Check for current location"),
      ),
    );
  }
}
