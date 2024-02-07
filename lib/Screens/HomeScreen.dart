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

            //TOP TEXT AND ICONS IS HERE
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.CustomText(),
                Icon(Icons.event_note,color: Colors.black54,)
              ],
            ),

            SizedBox(height: 25,),

            Card(
              elevation: 2,
              child: ListTile(
                tileColor: Colors.white,
                title: UiHelper.CustomTitleText("punch time is over"),
                subtitle:  UiHelper.CustomDescText("Today punch time is 12.30 pm so that wake to hurry up"),
              ),
            ),
            Card(
              elevation: 2,
              child: ListTile(
                tileColor: Colors.white,
                title: UiHelper.CustomTitleText("punch time is over"),
                subtitle:  UiHelper.CustomDescText("Today punch time is 12.30 pm so that wake to hurry up"),
              ),
            ),
            Card(
              elevation: 2,
              child: ListTile(
                tileColor: Colors.white,
                title: UiHelper.CustomTitleText("punch time is over"),
                subtitle:  UiHelper.CustomDescText("Today punch time is 12.30 pm so that wake to hurry up"),
              ),
            ),
            Card(
              elevation: 2,
              child: ListTile(
                tileColor: Colors.white,
                title: UiHelper.CustomTitleText("punch time is over"),
                subtitle:  UiHelper.CustomDescText("Today punch time is 12.30 pm so that wake to hurry up"),
              ),
            ),







          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.white,
        child: Icon(Icons.add_rounded,color: Colors.black54,),
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.white)),
      ),



    );
  }
}
