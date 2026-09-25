import 'package:flutter/material.dart';
import 'package:task_management/presentation/widget/task_card.dart';

class CancelTaskScreen extends StatefulWidget {
  const CancelTaskScreen({super.key});

  @override
  State<CancelTaskScreen> createState() => _CancelTaskScreenState();
}

class _CancelTaskScreenState extends State<CancelTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount:20,
            itemBuilder: (context,index){
              return TaskCard(
                editIcon: Icons.cancel_sharp,
              );
            }
          ),
    );
  }
}