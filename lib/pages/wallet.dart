import 'package:flutter/material.dart';
import 'package:last_bite/Widget/appcolors.dart';
import 'package:pixelarticons/pixel.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  final List<String> _walletItems = [
    "Recipe 1",
    "Recipe 2",
    "Recipe 3",
    "Recipe 4",
    "Recipe 5",
    "Recipe 6",
    "Recipe 7",
    "Recipe 8",
    "Recipe 9",
    "Recipe 10",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Center(
        child: SizedBox(
          height: size.height / 1.7 + 50,
          width: size.width / 1.2,
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                height: size.height / 1.7,
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
              ),

              Center(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 100),
                      height: size.height / 1.7 - 100,
                      width: size.width / 1.2,
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        border: Border.all(color: AppColor.black, width: 2),
                      ),
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        padding: const EdgeInsets.all(15),
                        itemCount: _walletItems.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                              color:
                                  index % 2 == 0
                                      ? AppColor.accentcolor
                                      : AppColor.yellow,
                              border: Border.all(
                                color: AppColor.black,
                                width: 2,
                              ),
                            ),
                            height: 100,
                            width: size.width / 1.35,

                            child: Center(
                              child: Text(
                                _walletItems[index],
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w100,
                                  color: AppColor.black,
                                  fontFamily: "Jersey",
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: size.width / 1.2 - 50,
                  height: 50,
                  margin: const EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    border: Border(
                      right: BorderSide(color: AppColor.black, width: 2),
                      top: BorderSide(color: AppColor.black, width: 2),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Recipes of the month",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: AppColor.black,
                          fontFamily: "Jersey",
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    color: AppColor.brick,
                    border: Border.all(color: AppColor.black, width: 2),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Pixel.heart, size: 30, color: AppColor.white),
                  ),
                ),
              ),

              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: size.width / 1.2,
                  height: 50,
                  margin: const EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    color: AppColor.primarycolor,
                    border: Border(
                      left: BorderSide(color: AppColor.black, width: 2),
                      right: BorderSide(color: AppColor.black, width: 2),
                      bottom: BorderSide(color: AppColor.black, width: 2),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
