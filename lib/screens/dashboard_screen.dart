import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_hub_flutter/providers/task_provider.dart';
import 'package:task_hub_flutter/widgets/dashboards_cards.dart';

import '../providers/task_status_provider.dart';
import '../widgets/project_summary_card.dart';
import '../widgets/task_chart.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasksStatus = ref.watch(taskStatusProvider);




    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: ListView(
        children: [
          DashBoardCards(tasksStatus: tasksStatus),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                margin: const EdgeInsets.all(10),
                child: TaskChart(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
