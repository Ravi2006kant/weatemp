import 'package:flutter/material.dart';

class AddList extends StatefulWidget{
  const AddList({super.key});

  @override
  State<AddList> createState() => _AddListState();
}

class _AddListState extends State<AddList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Add Task",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900)),
          iconTheme:IconThemeData(color: Colors.white), //change the arrow color
          
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             TextField(), 
             TextField(),
             DatePickerDialog(firstDate: DateTime(DateTime.april), lastDate: DateTime(DateTime.friday)),
             ElevatedButton(onPressed: (){}, child: Text("Submit"))
          ],
        ),
      ),
    );
    
  }
}
  

