import 'package:flutter/material.dart';
import 'package:weatemp/introScreen.dart';
import 'package:weatemp/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
      ),
      home: Loginscreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
   
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.primary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Dashboard'),
      ),
      body: Column(
        children: [
          Text("Welcome"),
          SizedBox(height: 50,),
          Card(elevation: 3,
          child: Text("view Task"),),
          SizedBox(height: 50,),
          Card(elevation: 3,
          child: Text("add Task"),),
        ],
      )
    );
  }
}
