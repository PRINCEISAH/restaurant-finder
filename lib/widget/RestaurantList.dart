import 'package:flutter/material.dart';
import 'package:restaurant/Database/model/place.dart';
import 'package:restaurant/widget/restaurantCard.dart';

class Restaurant_List extends StatelessWidget {
  final List<PlaceDetail> placeDetail;

  const Restaurant_List({Key key, this.placeDetail}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return RestaurantCard(
            name: placeDetail[index].name,
            address: placeDetail[index].address,
            IconUrl: placeDetail[index].icon,
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2,
            color: Colors.white,
          );
        },
        itemCount: placeDetail.length);
  }
}
