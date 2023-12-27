import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Store"),
    ),body: Column(children: [ElevatedButton(onPressed: (){}, child: Text("Add Book")), Column(children: [ListView.builder(itemBuilder: (context,index){})],),]),
         );
  }
}



