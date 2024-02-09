import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/Provider/TodoProvider.dart';
import 'package:todoapp/Screens/AddDataScreen.dart';
import 'package:todoapp/Screens/UpdateDataScreen.dart';
import 'package:todoapp/widget/UiHelper.dart';

import '../Models/todoModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<TodoModel> arrlist = [];

  FetchNote(){

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ToDoProvider>(
      builder: (context, value, child) {
        arrlist = value.FetchData();
      return Scaffold(
        backgroundColor: Colors.grey.shade200,

        //APPBAR START HERE.......................................................
        appBar: AppBar(
          title:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UiHelper.CustomText(),
              Icon(Icons.event_note,color: Colors.black54,)
            ],
          ),
          backgroundColor: Colors.grey.shade200,
        ),


        //BODY START HERE.........................................................
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,),
          child: Column(

            children: [

              //TOP TEXT AND ICONS IS HERE


              SizedBox(height: 25,),

              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateData(id: arrlist[index].id!),));
                      },
                      title: Text("${arrlist[index].title}"),
                      subtitle: Text("${arrlist[index].desc}"),
                      trailing: IconButton(onPressed: (){
                        context.read<ToDoProvider>().deleteData(arrlist[index].id!);
                      },icon: Icon(Icons.delete)),
                    ),
                  );
                },
                itemCount: arrlist.length,
                ),
              )



            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddDataScreen(),));
        },
          backgroundColor: Colors.white,
          child: Icon(Icons.add_rounded,color: Colors.black54,),
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.white)),
        ),



      );}
    );
  }
}
