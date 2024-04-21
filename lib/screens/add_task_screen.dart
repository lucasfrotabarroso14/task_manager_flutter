import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_hub_flutter/providers/task_provider.dart';

import '../models/task.dart';

class AddTaskScreen extends ConsumerStatefulWidget  {
  const AddTaskScreen({super.key});

  @override
  ConsumerState<AddTaskScreen> createState() => _AddTaskState();
}


class _AddTaskState extends ConsumerState<AddTaskScreen> {

  final _formKey = GlobalKey<FormState>();
  var _selectedLevel = 'Fácil';
  var _taskTitle = TextEditingController();
  var _selectedPhase = 'Fazendo';

  //-----------------------------------------------------------

  void _saveTask(){

    final taskTitle = _taskTitle.text;
    ref.read(taskProvider.notifier)
        .addPlace(taskTitle, _selectedLevel, _selectedPhase);
    Navigator.of(context).pop();





  }


  //-----------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Adicione a Task')
        ,),

      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(

            children: [
              Row(
                children: [
                  Expanded(

                    child: TextFormField(
                      maxLength: 50,
                      decoration: InputDecoration(
                        label: Text('Nome'),
                      ),
                      controller: _taskTitle,
                    ),
                  ),
                ],
              ),

              Row(

                children: [
                  Expanded(

                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        labelText: 'Selecione a dificuldade'
                      ),
                      value: _selectedLevel,
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
                        onChanged: (value){
                        setState(() {
                          _selectedLevel = value.toString();
                        });
                        }
                      ),
                  ),
                  SizedBox(width: 40,),



                  Expanded(

                    child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            labelText: 'Selecione a fase'
                        ),
                        value: _selectedPhase,
                        items: [
                          DropdownMenuItem(
                            child: Text('Fazendo'),
                            value: 'Fazendo',
                          ),
                          DropdownMenuItem(
                            child: Text('Revisando'),
                            value: 'Revisando',
                          ),
                          DropdownMenuItem(
                            child: Text('Na Fila'),
                            value: 'Na Fila',
                          ),
                          DropdownMenuItem(
                            child: Text('Completo'),
                            value: 'Completo',
                          )
                        ],
                        onChanged: (value){
                          setState(() {
                            _selectedPhase = value.toString();
                          });
                        }
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      onPressed: (){},
                      style:TextButton.styleFrom(
                          backgroundColor: Colors.purple[200]
                      ) ,
                      icon: Icon(Icons.refresh,color: Colors.white,),
                      label: Text('Reset',style: TextStyle(color: Colors.white),),
                    ),
                    SizedBox(width: 20,),
                    TextButton.icon(
                      onPressed: _saveTask,
                      style:TextButton.styleFrom(
                        backgroundColor: Colors.purple[200]
                      ) ,
                      icon: Icon(Icons.save,color: Colors.white,),
                      label: Text('Save',style: TextStyle(color: Colors.white),),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
