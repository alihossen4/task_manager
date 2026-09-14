import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("20",style: Theme.of(context).textTheme.titleLarge,),
        Text("new "),
      ],
    );
  }
}