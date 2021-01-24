import 'package:flutter/material.dart';
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
  Future<void> places() async {
    var url =
        "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=7.788899,6.709085&radius=1500&type=restaurant&keyword=food&key=$PLACES_API_Key";

    var request = await http.get(url);

    var respons = json.decode(request.body);

    print(respons);
  }

  @override
  void initState() {
    places();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        RestaurantCard(
          name: 'ISAH',
          address: 'PHASE 2',
        ),
      ],
    );
  }
}
