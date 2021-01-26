import 'package:restaurant/Screen/wrapper.dart';
import 'package:restaurant/utils/colors.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 10,
        navigateAfterSeconds: new Wrapper(),
        title: new Text(
          'Find Restaurant Around you',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: new Image.network(
            'https://media.istockphoto.com/photos/arabic-traditional-cuisine-middle-eastern-meze-platter-with-pita-picture-id986116094?k=6&m=986116094&s=612x612&w=0&h=JTS-kMhdaPmHsoe08vMq9RoDxHhRestayKJgYZi2MPI='),
        backgroundColor: AppColors.BackgroundGreyColor,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 250.0,
        loaderColor: Colors.red);
  }
}
