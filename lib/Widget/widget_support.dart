import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextStyleLittle() {
    return const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 0, 0, 0),
      fontFamily: "Ubuntu",
    );
  }

  static TextStyle headliineTextStyle() {
    return const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 0, 0, 0),
      fontFamily: "Ubuntu",
    );
  }

  static TextStyle subtitleTextStyle() {
    return const TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      color: Color.fromARGB(148, 0, 0, 0),
      fontFamily: "Ubuntu",
      fontStyle: FontStyle.italic,
    );
  }

  static TextStyle boldTextStyleLittleW() {
    return const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontFamily: "Ubuntu",
    );
  }

  static TextStyle headliineTextStyleW() {
    return const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontFamily: "Ubuntu",
    );
  }
}
