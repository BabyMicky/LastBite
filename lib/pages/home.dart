import 'package:flutter/material.dart';
import 'package:last_bite/Widget/appcolors.dart';
import 'package:pixelarticons/pixel.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool boxOne = false, boxTwo = false, boxThree = false, boxFour = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColor.white,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // * COUNTER
              Container(
                decoration: BoxDecoration(
                  color: AppColor.white,
                  border: Border.all(color: AppColor.black, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.black,
                      blurRadius: 0,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                width: size.width / 1.2,
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 40),
                          child: Text(
                            "Your impact",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Jersey",
                              color: AppColor.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          height: 100,
                          width: 100,
                          decoration: ShapeDecoration(
                            color: AppColor.accentcolor,
                            shape: CircleBorder(
                              side: BorderSide(color: AppColor.black, width: 2),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "35",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Jersey",
                                color: AppColor.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Spacer(),

                    Container(
                      margin: EdgeInsets.only(right: 40),
                      child: SizedBox(
                        width: 60,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Pixel.arrowbarright,
                            size: 40,
                            color: AppColor.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // * SEARCHBAR
              Container(
                margin: EdgeInsets.only(top: 20),
                width: size.width / 1.2,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  border: Border.all(color: AppColor.black, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.black,
                      blurRadius: 0,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Pixel.search, size: 30, color: AppColor.black),
                    SizedBox(width: 10),
                    SizedBox(
                      width: size.width / 1.5,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Pick your supermarket!",
                          hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            fontFamily: "Jersey",
                            color: AppColor.grey,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Jersey",
                          color: AppColor.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // * SCROLLING
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: size.width / 1.2,
                    height: 180,
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      border: Border.all(color: AppColor.black, width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.black,
                          blurRadius: 0,
                          offset: Offset(4, 4),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: SizedBox(
                      width: size.width / 1.2,
                      height: 130,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 110,
                          width: size.width / 1.5,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColor.black, width: 2),
                          ),
                          child: ListView(
                            padding: EdgeInsets.all(0),
                            controller: ScrollController(
                              initialScrollOffset: 0,
                              keepScrollOffset: true,
                            ),
                            physics: ScrollPhysics(
                              parent: BouncingScrollPhysics(),
                            ),
                            children: [
                              Container(
                                height: 50,
                                width: size.width / 1.5,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: AppColor.black,
                                      width: 2,
                                    ),
                                  ),
                                  color: AppColor.white,
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5.0,
                                      right: 5.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Albert Heijn",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Jersey",
                                              color: AppColor.black,
                                            ),
                                          ),
                                        ),

                                        SizedBox(width: 5),
                                        Icon(
                                          Pixel.chevronright,
                                          size: 20,
                                          color: AppColor.black,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                height: 50,
                                width: size.width / 1.5,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: AppColor.black,
                                      width: 2,
                                    ),
                                  ),
                                  color: AppColor.white,
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5.0,
                                      right: 5.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Aldi",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Jersey",
                                              color: AppColor.black,
                                            ),
                                          ),
                                        ),

                                        SizedBox(width: 5),
                                        Icon(
                                          Pixel.chevronright,
                                          size: 20,
                                          color: AppColor.black,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Container(
                                height: 50,
                                width: size.width / 1.5,
                                decoration: BoxDecoration(
                                  color: AppColor.white,
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 5.0,
                                      right: 5.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Jumbo",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: "Jersey",
                                              color: AppColor.black,
                                            ),
                                          ),
                                        ),

                                        SizedBox(width: 5),
                                        Icon(
                                          Pixel.chevronright,
                                          size: 20,
                                          color: AppColor.black,
                                        ),
                                      ],
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

                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: size.width / 1.2,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColor.primarycolor,
                      border: Border.all(color: AppColor.black, width: 2),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Pixel.map, size: 30, color: AppColor.black),
                          SizedBox(width: 10),
                          Text(
                            "Tilburg, NL",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Jersey",
                              color: AppColor.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
