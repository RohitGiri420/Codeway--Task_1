import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/todoModel.dart';
import '../Provider/TodoProvider.dart';
import '../widget/UiHelper.dart';

class UpdateData extends StatefulWidget {
  final int id;
  const UpdateData({super.key,required this.id});

  @override
  State<UpdateData> createState() => _UpdateDataState();
}

class _UpdateDataState extends State<UpdateData> {

  TextEditingController UpdatedTitleController = TextEditingController();
  TextEditingController UpdatedDescController = TextEditingController();

  BottomSheet(){
    return showModalBottomSheet(context: context, builder: (context) {
      return Container(
        height: 200,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Enter Required Field",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,fontFamily: 'f1',color: Colors.redAccent.shade100)),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("OK",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,fontFamily: 'f1',color: Colors.black54)))
          ],
        ),
      );
    },);

  }

  UpdateNote(String title, String desc,int id){
    if(title == ""){
      BottomSheet();
    }
    else{
      context.read<ToDoProvider>().UpdateData(TodoModel(title: title, desc: desc,id: id));
      Navigator.pop(context);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("UPDATE NOTES",style: TextStyle(fontSize: 37,fontWeight: FontWeight.w900,fontFamily: 'f1',color: Colors.black54)),
            SizedBox(height: 30,),
            UiHelper.CustomTextField("Title *",UpdatedTitleController),
            SizedBox(height: 30,),
            UiHelper.CustomTextField("Description", UpdatedDescController),
            SizedBox(height: 30,),
            UiHelper.CustomButton("Update Note",() {
              UpdateNote(UpdatedTitleController.text.toString(), UpdatedDescController.text.toString(),widget.id);
            },),
            SizedBox(height: 100,)

          ],
        ),
      ),

    );
  }
}
