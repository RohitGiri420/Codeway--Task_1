import 'package:flutter/material.dart';

class UiHelper {


  //COSTUM TEXT FOR HEADING.....................................................
  static CustomText() => const Text(
        "ToDo List",
        style: TextStyle(
            color: Colors.black54,
            fontSize: 22,
            fontWeight: FontWeight.w500,
            fontFamily: "f1",
        ),
      );

  static CustomTitleText(String text) =>  Text(
        text,
        style: TextStyle(
            color: Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: "f1",
            decoration: TextDecoration.lineThrough),
      );

  static CustomDescText(String text) =>  Text(
        text,
        style: TextStyle(
            color: Colors.black26,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: "f1",
            decoration: TextDecoration.lineThrough),
      );
}
