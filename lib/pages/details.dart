import 'package:flutter/material.dart';
import 'package:last_bite/Widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            Image.asset(
              "images/Burger.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("BLABLABLA", style: AppWidget.headliineTextStyle()),
                    Text("BLABLABLA", style: AppWidget.boldTextStyleLittle()),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a == 1) {
                      a = 1;
                    } else {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(Icons.remove, color: Colors.white),
                  ),
                ),
                SizedBox(width: 10),
                Text(a.toString(), style: AppWidget.boldTextStyleLittle()),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "description description description description description description description description description description description description description description description description description description description description description description description description description description description description description description description description description description description description description description description description description description description description ",
              style: AppWidget.subtitleTextStyle(),
              maxLines: 3,
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text("Delivery time", style: AppWidget.subtitleTextStyle()),
                Spacer(),
                Icon(Icons.alarm, color: Colors.black),
                SizedBox(width: 10),
                Text("30 min", style: AppWidget.boldTextStyleLittle()),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Total price",
                        style: AppWidget.boldTextStyleLittle(),
                      ),
                      Text("\$20.00", style: AppWidget.boldTextStyleLittle()),
                    ],
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            "Add to cart",
                            style: AppWidget.boldTextStyleLittleW(),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.add_shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
