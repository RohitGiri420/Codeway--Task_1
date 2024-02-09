import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:todoapp/Models/todoModel.dart';

class DbHelper {
  static final DbHelper db = DbHelper();

  static String TableName = "Todo_Table";
  static String ColumnId = "Column_Id";
  static String ColumnTitle = "Column_Title";
  static String ColumnDesc = "Column_Desc";

  Database? _database;

  Future<Database> getDb() async {
    if (_database != null) {
      return _database!;
    } else {
      Directory directory = await getApplicationDocumentsDirectory();
      var path = join(directory.path, "TodoDb.db");
      return openDatabase(
        path,
        version: 1,
        onCreate: (db, version) {
          db.execute(
              "CREATE TABLE $TableName($ColumnId INTEGER PRIMARY KEY AUTOINCREMENT,$ColumnTitle TEXT,$ColumnDesc TEXT)");
        },
      );
    }
  }

  Future<bool> addData(TodoModel todoModel) async {
    var db = await getDb();
    var check = await db.insert("$TableName",todoModel.toMap(),);
    return check>0;
  }

  Future<List<TodoModel>> fetchData()async{
    var db = await getDb();
    List<TodoModel> arrlist =[];
    var data = await db.query("$TableName");
    for(Map<String,dynamic>eachdata in data){
      TodoModel todoModel = TodoModel.formMap(eachdata);
      arrlist.add(todoModel);
    }
    return arrlist;
  }

  
  Future updateData(TodoModel todoModel) async{
    var db = await getDb();
    await db.update(TableName, todoModel.toMap(),where: "$ColumnId = ${todoModel.id}");
  }
  
  Future deleteData(int id) async {
    var db = await getDb();
    db.delete(TableName,where: "$ColumnId=?",whereArgs: [id.toString()]);
  }

}
