import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[50],
        title: Text("New Page"),
        actions: [Icon(Icons.mail,color: Colors.deepPurpleAccent,)],
        leading:Icon(Icons.menu_book,color: Colors.deepPurpleAccent,),
      ),
      body: Container(
        color: Colors.amber,
        ),
      );
      
  }
}