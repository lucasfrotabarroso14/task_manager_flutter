import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_hub_flutter/widgets/project_summary_card.dart';

class DashBoardCards extends StatefulWidget {
  const DashBoardCards({super.key,required this.tasksStatus });

  final tasksStatus;



  @override
  State<DashBoardCards> createState() => _DashBoardCardsState();
}

class _DashBoardCardsState extends State<DashBoardCards> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(

          children: [
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(


        children: [
          // SizedBox(width: 13,),
          Expanded(flex:13,child: ProjectSummaryCard(
            quantity: widget.tasksStatus['fazendo'].toString(),
            phase: 'Fazendo',
            color: Colors.blue.shade200,
          )),

          Expanded(flex:1, child: SizedBox(width: 12,)),

          Expanded(flex:13 ,child: ProjectSummaryCard(
            quantity: widget.tasksStatus['Revisando'].toString(),
            phase: 'Revisando',
            color: Colors.purpleAccent.shade100,
          )),
          // SizedBox(width: 13,),
        ],
      ),
    ),
    // SizedBox(height: 20,),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(

    children: [
    Expanded(flex:13,child: ProjectSummaryCard(
    quantity: widget.tasksStatus['Na fila'].toString(),
    phase: 'Na Fila',
    color: Colors.orangeAccent.shade200,
    )),
    Expanded(flex:1, child: SizedBox(width: 12,)),

    Expanded(flex:13 ,child: ProjectSummaryCard(
    quantity: widget.tasksStatus['completo'].toString(),
    phase: 'Completo',
    color: Colors.green.shade400
    )),

    ],

      ),
     )
    ]
      )
    );
  }
}
