import 'package:flutter/material.dart';
import 'package:task_management/presentation/widget/task_card.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount:20,
            itemBuilder: (context,index){
              return TaskCard(
                editIcon: Icons.timelapse,
              );
            }
            ),
    );
  }
}