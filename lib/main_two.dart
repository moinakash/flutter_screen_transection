import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screen_transection/main.dart';



/*void main() => runApp(SecScreen());*/


class SecScreen extends StatelessWidget{

  String a;
  String b;

  SecScreen(this.a,this.b);

  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "app name",
      home: Scaffold(
        appBar: AppBar(title: Text('Sec Screen'),),
        body: Material(
          child: Container(
            alignment: Alignment.center,


            child: Text('${a} , ${b}')

            ,)

          ),

        ),


      );

  }
}