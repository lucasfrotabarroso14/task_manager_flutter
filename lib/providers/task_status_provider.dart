import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_hub_flutter/providers/task_provider.dart';

final taskStatusProvider = Provider<Map<String,int>>((ref){
      final tasks = ref.watch(taskProvider);

      var  fazendo = 0;
      var revisando = 0;
      var fila = 0;
      var completo = 0;

      for (var task in tasks){
            switch(task.phase){
                  case 'Fazendo':
                        fazendo++;
                        break;
                  case 'Revisando':
                        revisando++;
                        break;
                  case 'Na Fila':
                        fila++;
                        break;
                  case 'Completo':
                        completo++;
                        break;
                  default:
                        break;


            }


      }
      return {
            'fazendo': fazendo,
            'Revisando': revisando,
            'Na fila': fila,
            'completo': completo,
      };


});