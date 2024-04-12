import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/task.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.task});
  final Task task ;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListTile(

        title: Padding(

          padding: const EdgeInsets.symmetric(vertical: 13),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                        flex: 10,
                        child: Text(task.title,
                        style: TextStyle(fontWeight: FontWeight.bold, ),)
                    ),
                    Expanded(
                        flex: 1,
                        child: Icon(Icons.more_horiz)
                    )
                  ],
                ),
              ),

              Row(
                children: [
                  Container(
                    // constraints: BoxConstraints(minWidth: 0,maxWidth: 50),


                    decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: BorderRadius.circular(13)
                      // border: BorderRadius.circular(10),

                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Center(child: Text(
                          task.phase,
                        style: TextStyle(fontSize: 14),
                      )
                      ),
                    ),

                  ),
                  SizedBox(width: 7,),

                  Container(
                    // constraints: BoxConstraints(minWidth: 0,maxWidth: 50),


                    decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(13)
                      // border: BorderRadius.circular(10),

                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Center(child: Text(
                        task.level,
                        style: TextStyle(fontSize: 14),
                      )
                      ),
                    ),


                  ),

                ],
              ),
              Spacer(),
              Row(children: [
               Icon(Icons.calendar_month,size: 14,),
               Text('10 abr 2024',style: TextStyle(fontSize: 12),)
             ],)

            ],
          ),
        ),

      ),
    );
  }
}
