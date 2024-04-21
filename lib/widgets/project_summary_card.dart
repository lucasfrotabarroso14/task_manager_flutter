import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class ProjectSummaryCard extends StatefulWidget {
  const ProjectSummaryCard({super.key, required this.quantity, required this.phase, required this.color});

  final String quantity;
  final String phase;
  final Color color;

  @override
  State<ProjectSummaryCard> createState() => _ProjectSummaryCardState();
}

class _ProjectSummaryCardState extends State<ProjectSummaryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 200,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(16),


      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(widget.quantity,style: TextStyle(fontSize:30),),
              ),
              Spacer(),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(

                  backgroundColor: Colors.white,
                  radius: 13,
                  child: Icon(Icons.more_horiz_outlined),
                  foregroundColor: Colors.black,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(

              children: [
                Text(widget.phase,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                )
              ],
            ),
          )

        ],
      ) ,);
  }
}
