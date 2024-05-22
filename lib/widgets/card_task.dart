import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_hub_flutter/widgets/edit_dialog.dart';


import '../models/task.dart';
import '../providers/task_provider.dart';
class TaskCard extends StatelessWidget {



  const TaskCard({super.key, required this.task});
  final Task task ;


  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd MMM yyyy').format(DateTime.now());
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
                        child: InkWell(
                          onTap: (){_showEditDialog(context, task);},
                            borderRadius: BorderRadius.circular(50),
                            child: Icon(Icons.more_horiz)
                        )
                    )
                  ],
                ),
              ),

              Row(
                children: [
                  Container(
                    // constraints: BoxConstraints(minWidth: 0,maxWidth: 50),


                    decoration: BoxDecoration(
                      color: getColorForPhase(task.phase), //quero fazer aqui esse tratamento
                      borderRadius: BorderRadius.circular(13)
                      // border: BorderRadius.circular(10),

                    ),
                    child:  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Center(child:
                      Text(
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
                        color: getColorForLevel(task.level),
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
               Text(formattedDate,style: TextStyle(fontSize: 12),)
             ],)

            ],
          ),
        ),

      ),
    );
  }


  _showEditDialog(BuildContext context, Task task){


    showDialog(
        context: context,
        builder: (BuildContext context){
          return EditDialog(task:task);
        }
    );

    
  }

  Color getColorForPhase(String phase) {
    switch (phase) {
      case 'Fazendo':
        return Colors.yellow[200]!;
      case 'Revisando':
        return Colors.blue[200]!;
      case 'Na Fila':
        return Colors.orange[200]!;
      case 'Completo':
        return Colors.green[200]!;
      default:
        return Colors.grey[200]!;
    }

  }

  Color getColorForLevel(String level) {
    switch (level) {
      case 'Fácil':
        return Colors.green[200]!;
      case 'Médio':
        return Colors.yellow[200]!;
      case 'Dificil':
        return Colors.red[200]!;
      default:
        return Colors.grey[200]!;
    }
  }

}




