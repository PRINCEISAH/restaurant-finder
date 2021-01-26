import 'package:flutter/material.dart';
import 'package:restaurant/Database/Services/placeRepsitory.dart';
import 'package:restaurant/Database/Services/service.dart';
import 'package:restaurant/Database/model/place.dart';
import 'package:restaurant/Screen/restaurantscreen.dart';
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
  List<PlaceDetail> placedata = [];

  bool isLoading = false;
  @override
  void initState() {
    GetUserLocation().getCurrentLocation();
  }

  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: isLoading
          ? CircularProgressIndicator()
          : RaisedButton(
              onPressed: () async {
                setState(() {
                  isLoading = true;
                });
                try {
                  _placesRepository.placesapi().then((value) {
                    setState(() {
                      placedata = value;
                    });
                  }).whenComplete(
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CurrentLocationScreen(
                                    placeDetail: placedata,
                                  )));
                      setState(() {
                        isLoading = false;
                      });
                    },
                  );
                } catch (e) {}
              },
              child: Text("Check for current location"),
            ),
    );
  }
}
