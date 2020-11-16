import 'package:flutter/material.dart';
import 'package:hello_world/myBody.dart';

void main() {
  runApp(
      new MaterialApp(
          debugShowCheckedModeBanner: false,
          home: new Scaffold(
              appBar: new AppBar(
                  title: new Text('Title')),
              body:
                Center(child:
                  new MyBody()
                )
          )
      )
  );
}