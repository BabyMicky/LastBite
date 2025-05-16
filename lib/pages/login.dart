import 'package:flutter/material.dart';
import 'package:last_bite/Widget/appcolors.dart';
import 'package:last_bite/pages/bottom_nav.dart';
import 'package:last_bite/pages/signup.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: AppColor.brick,
          body: SafeArea(
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: AppColor.yellow),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: AppColor.accentcolor),
                    ),
                  ],
                ),

                // * Logo and Login Text
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.2,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.black,
                          blurRadius: 0,
                          offset: const Offset(10, 10),
                        ),
                      ],
                      color: AppColor.white,
                      border: Border.all(color: AppColor.black, width: 2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // * Logo e scritta
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(
                                      "images/logo_1.png",
                                      fit: BoxFit.cover,
                                      height: 150,
                                      width: 150,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 140),
                                      child: Text(
                                        "Last Bite",
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w100,
                                          color: AppColor.black,
                                          fontFamily: "Jersey",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Log in",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w100,
                                    color: AppColor.darkGrey,
                                    fontFamily: "Jersey",
                                  ),
                                ),
                              ],
                            ),

                            // * text fields
                            SafeArea(
                              child: Column(
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: TextField(
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Jersey",
                                        color: AppColor.black,
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        floatingLabelStyle: TextStyle(
                                          color: AppColor.black,
                                          fontFamily: "Jersey",
                                          fontWeight: FontWeight.w100,
                                          fontSize: 20,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            0,
                                          ),
                                          borderSide: BorderSide(
                                            color: AppColor.black,
                                            width: 2,
                                          ),
                                        ),
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                          fontFamily: "Jersey",
                                          fontWeight: FontWeight.w100,
                                          color: AppColor.grey,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: TextField(
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Jersey",
                                        color: AppColor.black,
                                      ),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            0,
                                          ),
                                          borderSide: BorderSide(
                                            color: AppColor.black,
                                            width: 2,
                                          ),
                                        ),
                                        hintText: "Password",
                                        hintStyle: TextStyle(
                                          fontFamily: "Jersey",
                                          fontWeight: FontWeight.w100,
                                          color: AppColor.grey,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 40),

                                  Container(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      "Forgot password?",
                                      style: TextStyle(
                                        fontFamily: "Jersey",
                                        fontWeight: FontWeight.w100,
                                        color: AppColor.grey,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) => const BottomNav(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColor.primarycolor,
                                        border: Border.all(
                                          color: AppColor.black,
                                          width: 2,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColor.black,
                                            blurRadius: 0,
                                            offset: const Offset(2, 2),
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Log in",
                                          style: TextStyle(
                                            fontFamily: "Jersey",
                                            fontWeight: FontWeight.w100,
                                            color: AppColor.black,
                                            fontSize: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),

                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const SignUp(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColor.accentcolor,
                                        border: Border.all(
                                          color: AppColor.black,
                                          width: 2,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColor.black,
                                            blurRadius: 0,
                                            offset: const Offset(2, 2),
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Sign up",
                                          style: TextStyle(
                                            fontFamily: "Jersey",
                                            fontWeight: FontWeight.w200,
                                            color: AppColor.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
