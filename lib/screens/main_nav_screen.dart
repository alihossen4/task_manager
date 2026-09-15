import 'package:flutter/material.dart';
import 'package:task_management/screens/cancel_task_screen.dart';
import 'package:task_management/screens/completed_task_screen.dart';
import 'package:task_management/screens/task_screen.dart';
import 'package:task_management/screens/progress_task_screen.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({super.key});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {

  int selectedIndex =0;
  List screens = [
    TaskScreen(),
    ProgressTaskScreen(),
    CompletedTaskScreen(),
    CancelTaskScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(""),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              Text("Ali Hossen",style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colors.white,
              )),
              Text("Email address",style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colors.white
              )),

              ],
            )
          ],
        ),
        
      ),
      body: screens[selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        
        onDestinationSelected: (int index){
          selectedIndex = index;
          setState(() {
            
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.task), label: 'Task',),
          NavigationDestination(icon: Icon(Icons.access_time_filled_rounded), label: 'Progress'),
          NavigationDestination(icon: Icon(Icons.task_alt), label: 'Completed'),
          NavigationDestination(icon: Icon(Icons.cancel), label: 'Cancel'),
        ],
      ),
      
    );
  }
}