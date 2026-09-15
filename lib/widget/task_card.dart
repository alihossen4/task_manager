
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: .only(left: 3,right: 5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Text Title",style: TextStyle(fontSize: 20,),),
                  Text("Description for task",style: TextStyle(fontSize: 15,),),
    
                ],
              ),
    
              subtitle: Column(
                children: [
                  // Text("Ok"),
                  // SizedBox(height: 5,),
                  // Text("Date: 15/9/26"),
                  Row(children: [
                    Chip(label: Text("New",style: TextStyle(color: Colors.white, ),
                        
                    ),
                    backgroundColor: Colors.blue,
                    ),
                    Spacer(),
                    IconButton(icon: Icon(Icons.edit),onPressed: (){},color: Colors.green,),
                    IconButton(icon: Icon(Icons.delete),onPressed: (){},color: Colors.redAccent,),
        
                  ],)
                ],
        
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

