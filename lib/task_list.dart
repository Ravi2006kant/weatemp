import 'package:flutter/material.dart';

class TaskList extends StatefulWidget{
  const TaskList({super.key});

  @override
  State<StatefulWidget> createState() => _TaskList();
}

class _TaskList extends State<TaskList>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Center(child: Text("Task List",style: TextStyle(fontSize: 25,
      color: Colors.white,fontWeight: FontWeight.w900),)),backgroundColor: Colors.pink,),
      body: Column(
        children: [
          Card(
            child: Row(children: [Text("data")],),
          )
        ],
      ),
    );
  }
}