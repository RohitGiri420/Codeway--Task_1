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

      backgroundColor: Colors.grey.shade200,

      //APPBAR START HERE.......................................................
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
      ),


      //BODY START HERE.........................................................
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,),
        child: Column(

          children: [

            //TODO LIST TEXT AND ICONS IS HERE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.CustomText(),
                Icon(Icons.event_note,color: Colors.black54,)
              ],
            ),


          ],
        ),
      ),



    );
  }
}
