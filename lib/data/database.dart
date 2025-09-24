import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference our box
  final _myBox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["Make Tutorials", false],
      ["Do Exercise", false],
    ];
  }

  // Load the data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the data base

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
