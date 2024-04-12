import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_hub_flutter/models/task.dart';
import 'package:task_hub_flutter/providers/task_provider.dart';

import 'card_task.dart';

class TaskListView extends ConsumerWidget {
  const TaskListView({super.key});


  @override
  Widget build(BuildContext context,WidgetRef ref ) {
    final tasks = ref.watch(taskProvider);
    return  ListView.builder(
      itemCount: tasks.length,
        itemBuilder: (context,index) =>
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 13),
              child: Card(

                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.black,
                      width: 1),
                  borderRadius: BorderRadius.circular(20)
                ),

                child: TaskCard(
                  task: Task(
                      level: tasks[index].level,
                      phase: tasks[index].phase,
                      title:tasks[index].title,
                )
              ),
            )


       )
    );

  }
}
