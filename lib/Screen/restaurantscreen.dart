import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';
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

class CurrentLocationScreen extends StatelessWidget {
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
  List<PlaceDetail> place = [];

  @override
  Widget build(BuildContext context) {
    print(place.length);
    return ListView.builder(
        itemCount: 3,
        itemBuilder: ((context, index) {
          return RestaurantCard(
            name: place[index].name,
            address: place[index].formatted_address,
          );
        }));
  }
}
