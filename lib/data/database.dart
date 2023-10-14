import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  //REFERENCE OUR BOX

  final _myBox = Hive.box('myBox');

  // RUN THIS  METHOD ID THE 1 TIME EVER OPENING THE APP

  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  //LOAD THE DATA FROM DATABASE

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //UPDATE THE DATABSE

  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
