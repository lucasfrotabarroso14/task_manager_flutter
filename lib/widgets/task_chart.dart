



import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_hub_flutter/providers/task_status_provider.dart';

class TaskChart extends ConsumerWidget {
  const TaskChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taskStatus = ref.watch(taskStatusProvider);

    double getStatusValue(String key) {
      print('get aqui embaixo:');
      print(taskStatus[key]);
      return taskStatus[key]?.toDouble() ?? 0.0;

    }

    bool allValuesNull(Map<String, int?> map) {

      return map.values.every((value) => value == 0);

    }
    print(taskStatus);

    bool allNull = allValuesNull(taskStatus);
    print('aqui embaixo:');
    print(allNull);

    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            value: allNull ? 1.0 : getStatusValue('fazendo'),
            title: 'Fazendo',
            color: Colors.blue.shade200,
            radius: 90,
            showTitle: true,
            borderSide: BorderSide(width: 2, color: Colors.black),
            titleStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          PieChartSectionData(
            value: allNull ? 1.0 : getStatusValue('Revisando'),
            title: 'Revisando',
            color: Colors.purpleAccent.shade100,
            radius: 90,
            showTitle: true,
            borderSide: BorderSide(width: 2, color: Colors.black),
            titleStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          PieChartSectionData(
            value: allNull ? 1.0 : getStatusValue('Na fila'),
            title: 'Na Fila',
            color: Colors.orangeAccent.shade200,
            radius: 90,
            showTitle: true,
            borderSide: BorderSide(width: 2, color: Colors.black),
            titleStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          PieChartSectionData(
            value: allNull ? 1.0 : getStatusValue('completo'),
            title: 'Completo',
            color: Colors.green.shade400,
            radius: 90,
            showTitle: true,
            borderSide: BorderSide(width: 2, color: Colors.black),
            titleStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
        sectionsSpace: 5,
        centerSpaceColor: Colors.white54,
      ),
    );
  }
}
