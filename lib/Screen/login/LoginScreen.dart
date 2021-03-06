import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Database/Authentication/authentication.dart';
import 'package:restaurant/Screen/login/Register.dart';
import 'package:restaurant/SizeConfiguration/SizeConfig.dart';
import 'package:restaurant/utils/colors.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: Form(
        child: SingleChildScrollView(
          child: Container(
            height: SizeConfig.screenheight,
            width: SizeConfig.screenWidth,
            child: Column(
              children: [
                SizedBox(
                  height: GetHeight(148),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Container(
                      height: GetHeight(64),
                      width: GetWidth(305),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Let's Sign You In",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: GetHeight(8),
                          ),
                          Text(
                            "Welcome back, you’ve been missed!",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: GetHeight(40),
                ),
                SizedBox(
                  width: GetWidth(305),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(labelText: "Username"),
                  ),
                ),
                SizedBox(
                  height: GetHeight(40),
                ),
                SizedBox(
                  width: GetWidth(305),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                ),
                SizedBox(
                  height: GetHeight(176),
                ),
                InkWell(
                  onTap: () async {
                    print("checking cred");
                    try {
                      final userreg = await Authentication().SignInWithEmail(
                          email: emailController.text,
                          password: passwordController.text);

                      final User userdetailes = userreg.user;
                      print("........");
                      print("${userdetailes.uid}");
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: Container(
                    height: GetHeight(44),
                    width: GetWidth(305),
                    decoration: BoxDecoration(
                        color: Color(0xffFFDB47),
                        borderRadius: BorderRadius.circular(6)),
                    child: Center(
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                            color: AppColors.backgroundcolor,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: GetHeight(16),
                ),
                InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen())),
                    child: Text("Don't have an account? Sign up")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
