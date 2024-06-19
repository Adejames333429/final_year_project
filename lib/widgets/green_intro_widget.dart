import 'package:flutter/material.dart';
// import 'package:get/get.dart';

Widget greenIntroWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container (
        width: 150,
        margin: EdgeInsets.fromLTRB(0, 200.0, 0, 0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/oaulogo.jpg'),
            fit: BoxFit.contain,
          )
        ),
        height: 150,
      ),
    ],
  );
}