import 'package:todoapp/Database/DbHelper.dart';

class TodoModel {
  int? id;
  String title;
  String desc;

  TodoModel({required this.title, required this.desc, this.id});

  factory TodoModel.formMap(Map<String, dynamic> map) {
    return TodoModel(
        title: map[DbHelper.ColumnTitle],
        desc: map[DbHelper.ColumnDesc],
        id: map[DbHelper.ColumnId]);
  }

  Map<String, dynamic> toMap() {
    return {
      DbHelper.ColumnId: id,
      DbHelper.ColumnTitle: title,
      DbHelper.ColumnDesc: desc
    };
  }
}
