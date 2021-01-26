import 'package:flutter/material.dart';
import 'package:restaurant/Database/model/place.dart';
import 'package:restaurant/SizeConfiguration/SizeConfig.dart';
import 'package:restaurant/utils/colors.dart';
import 'package:restaurant/widget/appbar.dart';
import 'package:restaurant/widget/restaurantCard.dart';

class CurrentLocationScreen extends StatelessWidget {
  final List<PlaceDetail> placeDetail;

  const CurrentLocationScreen({Key key, this.placeDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: appbar(),
        backgroundColor: AppColors.backgroundcolor,
        body: ListView.separated(
            itemBuilder: (context, index) {
              return RestaurantCard(
                name: placeDetail[index].name,
                address: placeDetail[index].address,
                IconUrl: placeDetail[index].icon,
                rating: placeDetail[index].vicinity,
              );
            },
            separatorBuilder: (context, index) {
              return Container(
                child: Divider(
                  color: Colors.white,
                ),
              );
            },
            itemCount: placeDetail.length));
  }
}
