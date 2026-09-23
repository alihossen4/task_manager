import 'package:flutter/material.dart';
import 'package:task_management/widget/task_card.dart';

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount:20,
            itemBuilder: (context,index){
              return TaskCard(
                editIcon: Icons.task_alt_sharp,
              );
            }
          ),
    );
  }
}