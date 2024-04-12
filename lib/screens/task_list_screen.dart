import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_hub_flutter/screens/add_task_screen.dart';

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
      appBar: AppBar(
        elevation:0,
        leading: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple[200],

            ),


              child: Icon(Icons.view_agenda_outlined)),
        ),

        title: Text('Task List'),

      actions: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
              border: Border.all(
                  color: Colors.black,
                  width: 1
              ),

          ),
            child: IconButton
              (onPressed: (){}, icon: Icon(Icons.turn_right))),
        SizedBox(width: 10,),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                  color: Colors.black,
                  width: 1
              )

          ),

            child: IconButton(
                onPressed: (){}, icon: Icon(Icons.more_vert)
            )
        ),
        SizedBox(width: 10,),
      ],

      backgroundColor: Colors.white,),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => AddTaskScreen())
          );

        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple[200],


      ),


      body: Column(
        children: [
          SizedBox(height: 5),
          Container(
            height: 50,
            child: ButtonStatusListView()
          ),
          SizedBox(height: 10),
          Expanded(child: TaskListView()),

        ],
      ),
    );
  }
}
