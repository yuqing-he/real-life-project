import 'package:flutter/material.dart';
import 'package:actual_combat_app/models/tasks.dart';
import 'package:actual_combat_app/pages/twopages/add_task_page.dart';
import 'package:actual_combat_app/pages/twopages/task_list.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

// 回调的使用 第二步

class _TaskPageState extends State<TaskPage> {
  List<Task> tasks = [
    Task(name: '明天去理发'),
    Task(name: '大天去理发'),
    Task(name: '大大天去理发'),
    Task(name: '大大大天去理发'),
    Task(name: '大大大大天去理发'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskPage((newTaskTitle) {
              print('page');
              print(newTaskTitle);
              setState(() {
                tasks.add(Task(name: newTaskTitle));
              });
              Navigator.pop(context);
            }),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
//                  CircleAvatar(
//                    child: Icon(
//                      Icons.list,
//                      size: 30.0,
//                      color: Colors.lightGreen,
//                    ),
//                    radius: 30.0,
//                    backgroundColor: Colors.white,
//                  ),
                  Container(
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightBlue,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    width: 60,
                    height: 60,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'TODO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.warning,
                          color: Colors.red,
                        ),
                        Text(
                          '待处理 : ',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          ' ${tasks.length} 个任务',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 20.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: TaskList(
                  tasks: tasks,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
