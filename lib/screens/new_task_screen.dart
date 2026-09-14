import 'package:flutter/material.dart';
import 'package:task_management/widget/task_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return TaskCard();
              },
              separatorBuilder: (BuildContext context, int indext){
                return SizedBox();
              }, itemCount: 4),
          )
        ],
      ),
    );
  }
}

