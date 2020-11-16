import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyBody extends StatelessWidget{
  Widget build(BuildContext context) {
    return new Center // центрует объект-наследника
      (child: new
    Column( // размещает виджеты друг под другом
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          new Text('Hello World!'),
          new FlatButton(onPressed: () async {
            const url = 'https://github.com/AsahiOcean';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          }, child:
            Text('Open GitHub'),
            color: Colors.red,
            textColor: Colors.white,)]
    ));
  }
}