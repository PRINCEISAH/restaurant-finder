import 'package:flutter/material.dart';
import 'package:restaurant/Database/Authentication/authentication.dart';
import 'package:restaurant/SizeConfiguration/SizeConfig.dart';

class RegisterScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            "Getting Started",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: GetHeight(8),
                          ),
                          Text("Create an account to continue!")
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
                    final reg = await Authentication()
                        .Register_With_Email_password(
                            email: emailController.text,
                            password: passwordController.text);
                    print("print");
                  },
                  child: Container(
                    height: GetHeight(44),
                    width: GetWidth(305),
                    decoration: BoxDecoration(
                        color: Color(0xffFFDB47),
                        borderRadius: BorderRadius.circular(6)),
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: GetHeight(16),
                ),
                Text("Don't have an account? Sign up")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
