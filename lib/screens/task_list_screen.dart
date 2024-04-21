import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_hub_flutter/screens/add_task_screen.dart';
import 'package:task_hub_flutter/screens/dashboard_screen.dart';

import '../widgets/button_status.dart';
import '../widgets/task_list_view.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(





      body: Column(
        children: [
          SizedBox(height: 5),
          Container(
            height: 50,
            child: ButtonStatusListView()
          ),
          SizedBox(height: 10),
          Expanded(child: TaskListView())

        ],
      ),
    );
  }
}
