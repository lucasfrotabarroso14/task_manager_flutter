import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonStatusListView extends StatelessWidget {
  const ButtonStatusListView({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView(

      scrollDirection: Axis.horizontal,
      children: [
        ElevatedButton.icon(
          onPressed: (){},
          icon: Icon(Icons.done),
          label: Text('Complete'),

        ),
        SizedBox(width: 10,),
        ElevatedButton.icon(
          onPressed: (){},
          icon: Icon(Icons.pending_actions),
          label: Text('To Do '),

        ),
        SizedBox(width: 10,),
        ElevatedButton.icon(
          onPressed: (){},
          icon: Icon(Icons.search),
          label: Text('In Review '),

        )

      ],
    );
  }
}
