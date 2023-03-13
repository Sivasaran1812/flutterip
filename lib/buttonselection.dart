import 'package:flutter/material.dart';

void main() {
  runApp(
    selectionPage(),
  );
}

class TaskItem {
  TaskItem({required this.text, required this.imagePath, required this.color});
  final String text;
  final String imagePath;
  final Color color;
}

class selectionPage extends StatelessWidget {
  int index = 0;

  TaskItem taskItem1 = TaskItem(
      text: "Bath", imagePath: "images/bath.png", color: Colors.orange);
  TaskItem taskItem2 = TaskItem(
      text: "Water",
      imagePath: "images/drink-water.png",
      color: Colors.orangeAccent);
  TaskItem taskItem3 = TaskItem(
      text: "Food", imagePath: "images/food.png", color: Colors.orange);
  TaskItem taskItem4 = TaskItem(
      text: "Mosquitoes",
      imagePath: "images/mosquito.png",
      color: Colors.orangeAccent);
  TaskItem taskItem5 = TaskItem(
      text: "Tissues",
      imagePath: "images/tissue-box.png",
      color: Colors.orange);
  TaskItem taskItem6 = TaskItem(
      text: "Toilet",
      imagePath: "images/toilet.png",
      color: Colors.orangeAccent);
  // TaskItem taskItem7 = TaskItem(text: "Tissues", imagePath: "images/tissue-box.png", color: Colors.orange);
  TaskItem taskItem7 = TaskItem(
      text: "Chest Pain",
      imagePath: "images/chest-pain.png",
      color: Colors.orange);
  TaskItem taskItem8 = TaskItem(
      text: "Headache",
      imagePath: "images/headache.png",
      color: Colors.orangeAccent);
  TaskItem taskItem9 = TaskItem(
      text: "Stomach Pain",
      imagePath: "images/stomach-pain.png",
      color: Colors.orange);
  TaskItem taskItem10 = TaskItem(
      text: "Vomit", imagePath: "images/vomit.png", color: Colors.orangeAccent);

//
  List<TaskItem> taskItemList = [];

  selectionPage() {
    taskItemList.add(taskItem1);
    taskItemList.add(taskItem2);
    taskItemList.add(taskItem3);
    taskItemList.add(taskItem4);
    taskItemList.add(taskItem5);
    taskItemList.add(taskItem6);
    taskItemList.add(taskItem7);
    taskItemList.add(taskItem8);
    taskItemList.add(taskItem9);
    taskItemList.add(taskItem10);
  }

//   List<String> eventName = ['Bath', 'Water', 'Food'];
//   List<String> photoPath = ['images/bath.png','images/drink-water.png','images/food.png'];
//   List<Color> colors = [Color(0xffFFFFFF),Color(0xffFFFFFF),Colors.white];
  List<TaskItem> selectedTaskItems = [];

  // const selectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // if( == Colors.green)
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange[200],
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Select your List"),
          leading: IconButton(
            onPressed: () {
              // Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              for (TaskItem taskItem in taskItemList)
                task(taskItem: taskItem, selectedList: selectedTaskItems),
            ],
          ),
        ),
      ),
    );
  }
}

// class task extends StatelessWidget {
//    task({Key? key, required this.text, required this.imagePath, required this.color}) : super(key: key);
//
//   final String text;
//   final String imagePath;
//   final Color color;
//
//
//   @override
//   Widget build(BuildContext context) {
//
//   }
// }

class task extends StatefulWidget {
  const task({Key? key, required this.taskItem, required this.selectedList})
      : super(key: key);
  final TaskItem taskItem;
  final List<TaskItem> selectedList;

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            height: 100.0,
            color: _hasBeenPressed ? Colors.green : widget.taskItem.color,
            child: TextButton(
              onPressed: () {
                setState(() {
                  _hasBeenPressed = !_hasBeenPressed;
                  if (widget.selectedList.contains(widget.taskItem)) {
                    widget.selectedList.remove(widget.taskItem);
                    print(widget.selectedList.toString());
                  } else {
                    widget.selectedList.add(widget.taskItem);
                    print(widget.selectedList.toString());
                  }
                  print(widget.selectedList.toString());
                });
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Image(
                      image: AssetImage(widget.taskItem.imagePath),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 100.0,
            color: _hasBeenPressed ? Colors.green : widget.taskItem.color,
            child: TextButton(
              onPressed: () {
                setState(() {
                  _hasBeenPressed = !_hasBeenPressed;
                  if (widget.selectedList.contains(widget.taskItem)) {
                    widget.selectedList.remove(widget.taskItem);
                    print(widget.selectedList.toString());
                  } else {
                    widget.selectedList.add(widget.taskItem);
                    print(widget.selectedList.toString());
                  }
                  print(widget.selectedList.toString());
                });
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 30.0, 60.0, 20.0),
                child: Text(
                  widget.taskItem.text,
                  // textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
          ),
        ),
      ],
    );
    ;
  }
}
