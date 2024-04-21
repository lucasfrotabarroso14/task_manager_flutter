import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_hub_flutter/providers/task_provider.dart';

import '../providers/task_status_provider.dart';
import '../widgets/project_summary_card.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksStatus = ref.watch(taskStatusProvider);




    return Scaffold(
      appBar: AppBar(
        title:Text('Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(

          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(


              children: [
                // SizedBox(width: 13,),
                Expanded(flex:13,child: ProjectSummaryCard(
                  quantity: tasksStatus['fazendo'].toString(),
                  phase: 'Fazendo',
                  color: Colors.blue.shade200,
                )),

                Expanded(flex:1, child: SizedBox(width: 12,)),

                Expanded(flex:13 ,child: ProjectSummaryCard(
                  quantity: tasksStatus['Revisando'].toString(),
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
                  quantity: tasksStatus['Na fila'].toString(),
                  phase: 'Na Fila',
                  color: Colors.orangeAccent.shade200,
                )),
                Expanded(flex:1, child: SizedBox(width: 12,)),

                Expanded(flex:13 ,child: ProjectSummaryCard(
                  quantity: tasksStatus['completo'].toString(),
                    phase: 'Completo',
                  color: Colors.green.shade400
                )),
              ],
            ),
          )
        ],),
      )
    );
  }
}
