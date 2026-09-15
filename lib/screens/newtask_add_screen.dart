import 'package:flutter/material.dart';

class NewtaskAddScreen extends StatefulWidget {
  const NewtaskAddScreen({super.key});

  @override
  State<NewtaskAddScreen> createState() => _NewtaskAddScreenState();
}

class _NewtaskAddScreenState extends State<NewtaskAddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          iconTheme: Theme.of(context).iconTheme.copyWith(
            color: Colors.white
            
          ),
        ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
            
            Text("Add New Task", style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ), textAlign: TextAlign.center,),
              SizedBox(height: 25,),
              TextFormField(
                decoration: InputDecoration(
                contentPadding: .all(8),
                  hintText: "Title",
                ),
              ),
                SizedBox(height: 10,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: .symmetric(horizontal: 8, vertical: 30),
                  hintText: "Description",
                ),
              ),
              SizedBox(height: 15,),
              FilledButton(onPressed: (){
            
              },child: Text("Add",style: TextStyle(fontSize: 20),)),
              ],
            ),
          ),
    );
  }
}