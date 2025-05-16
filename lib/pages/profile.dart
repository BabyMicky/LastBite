import 'package:flutter/material.dart';
import 'package:last_bite/Widget/appcolors.dart';
import 'package:pixelarticons/pixel.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColor.white,
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 70),
          height: size.height / 1.6,
          width: size.width / 1.2,
          decoration: BoxDecoration(
            color: AppColor.white,
            border: Border.all(color: AppColor.black, width: 2),
            boxShadow: [
              BoxShadow(
                color: AppColor.black,
                blurRadius: 0,
                offset: const Offset(4, 4),
              ),
            ],
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Container(
                    height: size.height / 4,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      border: Border.all(color: AppColor.black, width: 3),
                    ),
                    child: const Center(
                      child: Icon(Pixel.user, size: 140, color: AppColor.black),
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    height: size.height / 20,
                    width: size.width / 1.2,
                    decoration: BoxDecoration(
                      color: AppColor.accentcolor,
                      border: Border.all(color: AppColor.black, width: 2),
                    ),
                    child: const Center(
                      child: Text(
                        "Irene Sostero",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: AppColor.black,
                          fontFamily: "Jersey",
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    height: size.height / 20,
                    width: size.width / 1.2,
                    decoration: BoxDecoration(
                      color: AppColor.accentcolor,
                      border: Border.all(color: AppColor.black, width: 2),
                    ),
                    child: const Center(
                      child: Text(
                        "11-12-04",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: AppColor.black,
                          fontFamily: "Jersey",
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    height: size.height / 20,
                    width: size.width / 1.2,
                    decoration: BoxDecoration(
                      color: AppColor.accentcolor,
                      border: Border.all(color: AppColor.black, width: 2),
                    ),
                    child: const Center(
                      child: Text(
                        "Student at Tilburg University",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: AppColor.black,
                          fontFamily: "Jersey",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: size.height / 20,
                    width: size.width / 1.2,
                    child: const Center(
                      child: Text(
                        "Additional Information",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                          color: AppColor.darkGrey,
                          fontFamily: "Jersey",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
