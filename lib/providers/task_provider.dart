
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';

import '../models/task.dart';



class TaskNotifier extends StateNotifier<List<Task>>{
  TaskNotifier(): super([]);



  addPlace(String title, String level, String phase){

    final newPlace = Task(title:title,level:level,phase:phase);
    state = [newPlace, ...state];
  }



}

final taskProvider = StateNotifierProvider<TaskNotifier,List<Task>>(
        (ref) => TaskNotifier()
);



