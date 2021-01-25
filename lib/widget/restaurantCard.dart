import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:restaurant/SizeConfiguration/SizeConfig.dart';
import 'package:restaurant/utils/colors.dart';

class RestaurantCard extends StatelessWidget {
  final String name;

  final String address;
  final String distance;

  const RestaurantCard({
    Key key,
    this.name,
    this.address,
    this.distance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: GetHeight(166.69),
      width: GetWidth(315),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: GetHeight(120),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(2, 4),
                      blurRadius: 3,
                    )
                  ]),
              child: Row(
                children: [
                  Container(
                    height: GetHeight(120),
                    width: GetWidth(134.88),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(left: 16, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: GetWidth(6.66),
                                ),
                              ],
                            ),
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textblueColor),
                            ),
                            SizedBox(
                              height: GetHeight(7.44),
                            ),
                            Text(
                              "",
                              style: TextStyle(
                                  fontSize: 8, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: GetHeight(15.47),
                            ),
                            Container(
                              height: GetHeight(12),
                              width: GetWidth(96),
                              child: Row(
                                children: [
                                  // SvgPicture.asset("images/location.svg"),
                                  Spacer(),
                                  Text(
                                    address,
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12.89),
                          child: Container(
                            height: GetHeight(16.89),
                            width: GetWidth(16.98),
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
