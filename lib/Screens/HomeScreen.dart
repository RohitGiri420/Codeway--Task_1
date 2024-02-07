import 'package:flutter/material.dart';
import 'package:todoapp/widget/UiHelper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //APPBAR START HERE.......................................................
      appBar: AppBar(),


      //BODY START HERE.........................................................
      body: Column(
        children: [
          Row(
            children: [

              UiHelper.CustomText(),

            ],
          ),


        ],
      ),



    );
  }
}
