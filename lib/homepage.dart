import 'package:flutter/material.dart';
import 'package:untitled/castom_widget/notification_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      appBar: AppBar(
        title: Text("Hi its new"),
      ),
      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.all(6.0),
         )
        ],
      ),
    );
  }
}
