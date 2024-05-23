



import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TaskChart extends StatelessWidget {
  const TaskChart({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            value:25,
            title: 'Fazendo',
            color: Colors.blue.shade200,
            radius: 90,
            showTitle: true,
              borderSide: BorderSide(
                  width: 2,
                  color: Colors.black
              ),
            titleStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            )


          ),
          PieChartSectionData(
              value:25,
              title: 'Revisando',
              color:Colors.purpleAccent.shade100,
              radius: 90,
              showTitle: true,
              borderSide: BorderSide(
                  width: 2,
                  color: Colors.black
              ),
              titleStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              )

          ),
          PieChartSectionData(
              value:25,
              title: 'Na Fila',
              color: Colors.orangeAccent.shade200,
              radius: 90,
              showTitle: true,
              borderSide: BorderSide(
                  width: 2,
                  color: Colors.black
              ),
              titleStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,

              )
          ),

          PieChartSectionData(
              value:25,
              title: 'Completo',
              color: Colors.green.shade400,
              radius: 90,
              showTitle: true,
              borderSide: BorderSide(
                width: 2,
                color: Colors.black
              ),
              titleStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              )
          ),
        ],
          sectionsSpace: 5,
          centerSpaceColor: Colors.white54
      ),
    );
  }
}
