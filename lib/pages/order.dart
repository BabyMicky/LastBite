import 'package:flutter/material.dart';
import 'package:last_bite/Widget/appcolors.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  final List<String> entries = <String>['A', 'B', 'C', 'D'];

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
                height: 130,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Let's save some food togheter!",
                          style: TextStyle(
                            fontSize: 30,
                            color: AppColor.black,
                            fontFamily: "Jersey",
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: size.width / 1.2,
                    height: 330,
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
                      height: 330,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                color: AppColor.brick,
                                border: Border.all(
                                  color: AppColor.black,
                                  width: 3,
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  "Recipes of the day",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w100,
                                    color: AppColor.white,
                                    fontFamily: "Jersey",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            // * LIST VIEW
                            Container(
                              height: 220,
                              width: size.width / 1.2,
                              decoration: BoxDecoration(
                                color: AppColor.white,
                                border: Border.all(
                                  color: AppColor.black,
                                  width: 3,
                                ),
                              ),
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.all(0),
                                itemCount: entries.length,
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
                                        "Recipe ${entries[index]}",
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
