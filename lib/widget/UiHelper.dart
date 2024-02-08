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

  static CustomTitleText(String text) => Text(
        text,
        style: TextStyle(
            color: Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: "f1",
            decoration: TextDecoration.lineThrough),
      );

  static CustomDescText(String text) => Text(
        text,
        style: TextStyle(
            color: Colors.black26,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: "f1",
            decoration: TextDecoration.lineThrough),
      );

  static CustomTextField(String text,TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Card(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(13),
              topLeft: Radius.circular(13),
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)),
          borderSide: BorderSide(color: Colors.grey.shade200,width: 0.0)
        ),
        elevation:3,

        child: TextField(
          controller: controller,
          autocorrect: true,
          style: TextStyle(color: Colors.black54,fontFamily: 'f1'),
          maxLines: null,
          decoration: InputDecoration(
            fillColor: Colors.white70,
            filled: true,
            enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(13),
                    topLeft: Radius.circular(13),
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                borderSide: BorderSide(color: Colors.grey.shade200,width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(13),
                  topLeft: Radius.circular(13),
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
              borderSide: BorderSide(color: Colors.grey.shade300,width: 3),
            ),
            label: Text("$text",style: TextStyle(color: Colors.black54,fontFamily: 'f1'),)
          ),
        ),
      ),
    );
  }
}
