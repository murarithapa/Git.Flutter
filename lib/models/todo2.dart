import 'package:flutter/material.dart';

// void main()=>runApp(MaterialApp(
//   title: "TODO APP",
//   home: TODOAPP(),
// ));


class TODOAPP extends StatefulWidget {
  const TODOAPP({Key? key}) : super(key: key);

  @override
  State<TODOAPP> createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('TODO APP'),
        centerTitle: true,

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:(){} ,
      ),
      body: ListView(
          children: [
          TextFormField(),
      ListTile(
        title: Text('GET UP'),
        leading: Icon(Icons.info),

      ),
      ListTile(
        title: Text('SLEEP'),
        leading: Icon(Icons.info),


      ),
      ListTile(
        title: Text('Code'),
        leading: Icon(Icons.info),


      ),


    ],
    ),
    );
  }
}





