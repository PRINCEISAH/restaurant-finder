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

class CurrentLocationScreen extends StatelessWidget {
  final List<PlaceDetail> placeDetail;

  const CurrentLocationScreen({Key key, this.placeDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: appbar(),
      backgroundColor: AppColors.backgroundcolor,
      body: ListView.builder(
          itemCount: placeDetail.length,
          itemBuilder: (context, index) {
            return RestaurantCard(
              name: placeDetail[index].name,
              address: placeDetail[index].address,
              IconUrl: placeDetail[index].icon,
            );
          }),
    );
  }
}
