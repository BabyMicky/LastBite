import 'package:flutter/material.dart';
import 'package:last_bite/Widget/appcolors.dart';
import 'package:last_bite/pages/home.dart';
import 'package:last_bite/pages/order.dart';
import 'package:last_bite/pages/profile.dart';
import 'package:last_bite/pages/shopping_cart.dart';
import 'package:last_bite/pages/wallet.dart';
import 'package:pixelarticons/pixel.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currenTabIndex = 0;
  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Wallet wallet;
  late Order order;
  late Profile profile;

  @override
  void initState() {
    homepage = Home();
    wallet = Wallet();
    order = Order();
    profile = Profile();
    pages = [homepage, wallet, order, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          pages[currenTabIndex],

          // * HIGH App Bar
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              width: size.width,
              height: 140,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: size.width,
                    height: 140,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: AppColor.black, width: 2),
                      ),
                      color: AppColor.yellow,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: size.width / 1.1,
                    height: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          height: 60,
                          decoration: BoxDecoration(
                            color: AppColor.primarycolor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 0,
                                offset: const Offset(4, 4),
                              ),
                            ],
                            border: Border.all(color: AppColor.black, width: 2),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("images/logo_1.png"),
                              const SizedBox(width: 10),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Text(
                                  "Hello Irene",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Jersey",
                                    color: AppColor.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        // * Custom Button home
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: AppColor.yellow,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.transparent,
                                blurRadius: 0,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: IconButton(
                              icon: const Icon(Pixel.shoppingbag),
                              color: Colors.black,
                              iconSize: 25,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ShoppingCart(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // * Bottom Navigation Bar
          // * Custom Bottom Navigation Bar
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: size.width,
              height: 100,
              child: Stack(
                alignment: Alignment.bottomCenter,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: size.width,
                    height: 65,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: AppColor.black, width: 2),
                      ),
                      color: AppColor.yellow,
                    ),
                  ),
                  SizedBox(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // * Custom Button home
                        AnimatedContainer(
                          margin:
                              currenTabIndex == 0
                                  ? const EdgeInsets.only(bottom: 10)
                                  : const EdgeInsets.only(bottom: 0),
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOutCubicEmphasized,
                          width: currenTabIndex == 0 ? 80 : 60,
                          height: currenTabIndex == 0 ? 80 : 60,
                          decoration: BoxDecoration(
                            color:
                                currenTabIndex == 0
                                    ? AppColor.brick
                                    : AppColor.yellow,
                            boxShadow: [
                              BoxShadow(
                                color:
                                    currenTabIndex == 0
                                        ? AppColor.black
                                        : Colors.transparent,
                                blurRadius: 0,
                                offset:
                                    currenTabIndex == 0
                                        ? const Offset(4, 4)
                                        : const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: IconButton(
                              icon: const Icon(Pixel.home),
                              color:
                                  currenTabIndex == 0
                                      ? AppColor.white
                                      : Colors.black,
                              iconSize: currenTabIndex == 0 ? 30 : 25,
                              onPressed: () {
                                setState(() {
                                  currenTabIndex = 0;
                                  currentPage = pages[0];
                                });
                              },
                            ),
                          ),
                        ),
                        // * Custom Button liked
                        AnimatedContainer(
                          margin:
                              currenTabIndex == 1
                                  ? const EdgeInsets.only(bottom: 10)
                                  : const EdgeInsets.only(bottom: 0),
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOutCubicEmphasized,
                          width: currenTabIndex == 1 ? 80 : 60,
                          height: currenTabIndex == 1 ? 80 : 60,
                          decoration: BoxDecoration(
                            color:
                                currenTabIndex == 1
                                    ? AppColor.brick
                                    : AppColor.yellow,
                            boxShadow: [
                              BoxShadow(
                                color:
                                    currenTabIndex == 1
                                        ? AppColor.black
                                        : Colors.transparent,
                                blurRadius: 0,
                                offset:
                                    currenTabIndex == 1
                                        ? const Offset(4, 4)
                                        : const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: IconButton(
                              icon: const Icon(Pixel.heart),
                              color:
                                  currenTabIndex == 1
                                      ? AppColor.white
                                      : Colors.black,
                              iconSize: currenTabIndex == 1 ? 30 : 25,
                              onPressed: () {
                                setState(() {
                                  currenTabIndex = 1;
                                  currentPage = pages[1];
                                });
                              },
                            ),
                          ),
                        ),
                        // * Custom Button order
                        AnimatedContainer(
                          margin:
                              currenTabIndex == 2
                                  ? const EdgeInsets.only(bottom: 10)
                                  : const EdgeInsets.only(bottom: 0),
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOutCubicEmphasized,
                          width: currenTabIndex == 2 ? 80 : 60,
                          height: currenTabIndex == 2 ? 80 : 60,
                          decoration: BoxDecoration(
                            color:
                                currenTabIndex == 2
                                    ? AppColor.brick
                                    : AppColor.yellow,
                            boxShadow: [
                              BoxShadow(
                                color:
                                    currenTabIndex == 2
                                        ? AppColor.black
                                        : Colors.transparent,
                                blurRadius: 0,
                                offset:
                                    currenTabIndex == 2
                                        ? const Offset(4, 4)
                                        : const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: IconButton(
                              icon: const Icon(Pixel.listbox),
                              color:
                                  currenTabIndex == 2
                                      ? AppColor.white
                                      : Colors.black,
                              iconSize: currenTabIndex == 2 ? 30 : 25,
                              onPressed: () {
                                setState(() {
                                  currenTabIndex = 2;
                                  currentPage = pages[2];
                                });
                              },
                            ),
                          ),
                        ),
                        // * Custom Button profile
                        AnimatedContainer(
                          margin:
                              currenTabIndex == 3
                                  ? const EdgeInsets.only(bottom: 10)
                                  : const EdgeInsets.only(bottom: 0),
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOutCubicEmphasized,
                          width: currenTabIndex == 3 ? 80 : 60,
                          height: currenTabIndex == 3 ? 80 : 60,
                          decoration: BoxDecoration(
                            color:
                                currenTabIndex == 3
                                    ? AppColor.brick
                                    : AppColor.yellow,
                            boxShadow: [
                              BoxShadow(
                                color:
                                    currenTabIndex == 3
                                        ? AppColor.black
                                        : Colors.transparent,
                                blurRadius: 0,
                                offset:
                                    currenTabIndex == 3
                                        ? const Offset(4, 4)
                                        : const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: IconButton(
                              icon: const Icon(Pixel.avatar),
                              color:
                                  currenTabIndex == 3
                                      ? AppColor.white
                                      : Colors.black,
                              iconSize: currenTabIndex == 3 ? 30 : 25,
                              onPressed: () {
                                setState(() {
                                  currenTabIndex = 3;
                                  currentPage = pages[3];
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ! Not needing this class
// ! for now, but keeping it for future reference

/*class BottomNavPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..color = AppColor.white
          ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}*/

      // ! Old navigation bar
      
      /*bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            currenTabIndex = index;
            currentPage = pages[index];
          });
        },
        items: [
          Icon(Icons.home_outlined, color: Colors.white),
          Icon(Icons.shopping_bag_outlined, color: Colors.white),
          Icon(Icons.wallet_outlined, color: Colors.white),
          Icon(Icons.person_outlined, color: Colors.white),
        ],
      ),*/
