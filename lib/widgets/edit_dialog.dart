import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/task.dart';
import '../providers/task_provider.dart';

class EditDialog extends ConsumerStatefulWidget {

  final Task task;
  const EditDialog({super.key, required this.task});

  @override
  ConsumerState<EditDialog> createState() => _EditDialogState();
}

class _EditDialogState extends ConsumerState<EditDialog> {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController(text: widget.task.title);
    String selectedPhase = widget.task.phase;
    String selectedLevel = widget.task.level;

    return AlertDialog(


      title: Text('Editar Tarefa'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(labelText: 'Titulo'),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: DropdownButtonFormField(
                    items: [
                      DropdownMenuItem(
                        value:'Dificil',
                        child: Text('Dificil'),
                      ),
                      DropdownMenuItem(
                        value:'Médio',
                        child: Text('Médio'),
                      ),
                      DropdownMenuItem(
                        value:'Fácil',
                        child: Text('Fácil'),
                      ),
                    ],
                    onChanged:(newValue){
                      selectedLevel = newValue!;
                    }
                ),
              ),
              SizedBox(width: 40,),
              Expanded(
                child: DropdownButtonFormField(
                    items: [
                      DropdownMenuItem(
                        value:'Dificil',
                        child: Text('Dificil'),
                      ),
                      DropdownMenuItem(
                        value:'Médio',
                        child: Text('Médio'),
                      ),
                      DropdownMenuItem(
                        value:'Fácil',
                        child: Text('Fácil'),
                      ),
                    ],
                    onChanged:(newValue){
                      selectedLevel = newValue!;
                    }

                ),
              ),
            ],
          )
        ],
      ),
      actions: [
        TextButton(
            onPressed: (){},
            child: Text('Salvar',style: TextStyle(color: Colors.blue),)
        ),
        TextButton(
            onPressed: (){
              ref.read(taskProvider.notifier)
                  .deleteProvider(widget.task);
              Navigator.of(context).pop();
              print('Número de tarefas após exclusão: ${ref.watch(taskProvider).length}');


    },
            child: Text('Excluir',style: TextStyle(color: Colors.red),)
        ),


      ],
    );
  }
}
