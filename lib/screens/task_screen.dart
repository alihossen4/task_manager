import 'package:flutter/material.dart';
import 'package:task_management/screens/newtask_add_screen.dart';
import 'package:task_management/widget/task_card.dart';
import 'package:task_management/widget/task_card_count.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        
        children: [
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return TaskCardCount(count:9,title: "new",);
              },
              separatorBuilder: (BuildContext context, int indext){
                return SizedBox(width:MediaQuery.sizeOf(context).width/16,child: SizedBox());
              }, itemCount: 4),
          ),
          Expanded(
            child: ListView.builder(itemCount:20,
            itemBuilder: (context,index){
              return TaskCard(
                editIcon: Icons.edit,
                taskIcon: Icons.delete,
              );
            }
            )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.blue, foregroundColor: Colors.white, onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> NewtaskAddScreen()));
      },child: Icon(Icons.add,),),
    );
  }
}
