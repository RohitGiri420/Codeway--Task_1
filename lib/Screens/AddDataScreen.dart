import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/Models/todoModel.dart';
import 'package:todoapp/Provider/TodoProvider.dart';
import 'package:todoapp/widget/UiHelper.dart';

class AddDataScreen extends StatefulWidget {
  const AddDataScreen({super.key});

  @override
  State<AddDataScreen> createState() => _AddDataScreenState();
}

class _AddDataScreenState extends State<AddDataScreen> {

  TextEditingController TitleController = TextEditingController();
  TextEditingController DescController = TextEditingController();

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

  addNote(String title, String description){
    if(title == ""){
      BottomSheet();
    }
    else{
      context.read<ToDoProvider>().AddData(TodoModel(title: title, desc: description));
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
            Text("ADD NOTES",style: TextStyle(fontSize: 37,fontWeight: FontWeight.w900,fontFamily: 'f1',color: Colors.black54)),
            SizedBox(height: 20,),
            UiHelper.CustomTextField("Title *",TitleController),
            SizedBox(height: 20,),
            UiHelper.CustomTextField("Description", DescController),
            SizedBox(height: 20,),
            UiHelper.CustomButton("Add Note",() {
              addNote(TitleController.text.toString(),DescController.text.toString());
            },),
            SizedBox(height: 80,)
          ],
        ),
      ),
    );
  }
}
