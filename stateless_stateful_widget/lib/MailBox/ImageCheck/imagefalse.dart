import 'package:flutter/material.dart';

class ImageFalse extends StatelessWidget {
  const ImageFalse({
    Key key,
    @required String title,
    @required String text,
  }) : _title = title, _text = text, super(key: key);

  final String _title;
  final String _text;

  @override
  Widget build(BuildContext context) {
    return new
    Container(
        color: Colors.black12, /// цвет фона блока
        height: 100.0, /// высота (height ожидает значение типа Double поэтому 100.0, а не 100)
        child: new Row(children: [
          new Expanded(child:
          new Container(padding:
          new EdgeInsets.all(5.0), child:
          new Column(children: [
            new Text(_title, style:
            new TextStyle(fontSize: 20.0),
                overflow: TextOverflow.ellipsis
            ),
            new Expanded(child:
            new Text(_text,
              softWrap: true,
              textAlign: TextAlign.justify,
            )
            )
          ]))
          )
        ])
    );
  }
}