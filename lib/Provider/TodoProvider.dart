import 'package:flutter/material.dart';
import 'package:todoapp/Database/DbHelper.dart';
import 'package:todoapp/Models/todoModel.dart';
import 'package:todoapp/Screens/UpdateDataScreen.dart';

class ToDoProvider extends ChangeNotifier {
  DbHelper db = DbHelper.db;

  List<TodoModel> arrlist = [];

  AddData(TodoModel todoModel) async {
    var check = await db.addData(todoModel);
    if (check) {
      getData();
    }
  }

  UpdateData(TodoModel todoModel) async {
    var check = await db.updateData(todoModel);
    if(check){
      getData();
    }
  }

  List<TodoModel> FetchData() {
    getData();
    return arrlist;
  }

  getData() async {
    arrlist = await db.fetchData();
    notifyListeners();
  }

  deleteData(int id) async{
    var check = await db.deleteData(id);
    if(check){
      getData();
      notifyListeners();
    }

  }

}