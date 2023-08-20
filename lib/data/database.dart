import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  //Hive box reference
  final _myBox = Hive.box("mybox");

  // run this method if this is the first time open this app
  void createInitialDate() {
    toDoList = [
      ["Go Biking", false],
      ["Prepare Breakfast", false],
    ];
  }

  // load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
