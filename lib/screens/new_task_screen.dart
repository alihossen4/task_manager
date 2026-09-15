import 'package:flutter/material.dart';
import 'package:task_management/screens/newtask_add_screen.dart';
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
                return TaskCard(count:9,title: "new",);
              },
              separatorBuilder: (BuildContext context, int indext){
                return SizedBox(width:MediaQuery.sizeOf(context).width/16,child: SizedBox());
              }, itemCount: 4),
          ),
          Expanded(
            child: ListView.builder(itemCount:20,
            itemBuilder: (context,index){
              return ListTile(
                title: Text("Text title"),
                subtitle: Text("sub title"),
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

