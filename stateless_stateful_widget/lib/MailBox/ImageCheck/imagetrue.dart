import 'package:flutter/material.dart';

class ImageTrue extends StatelessWidget {
  const ImageTrue({
    Key key,
    @required this.N,
    @required String imageUrl,
    @required String title,
    @required String text,
  }) : _imageUrl = imageUrl, _title = title, _text = text, super(key: key);

  final double N;
  final String _imageUrl;
  final String _title;
  final String _text;

  @override
  Widget build(BuildContext context) {
    return new
    Container (
        color: Colors.black12,
        height: N,
        child: new Row(children: [
          new Padding(padding:
          new EdgeInsets.symmetric(vertical: 5), child: /// добавим отступ
          new Image.network(_imageUrl,
            width: N, height: N, /// параметры высоты и ширины возьмем
            fit: BoxFit.fitHeight, /// способ кадрирования и заполнения
          ),
          ),
          new Expanded(child: /// для ограничения размеров дочерних виджетов, без него виджет Column может иметь безграничные размеры и выходить за края экрана
          new Container(padding: /// Container со свойством padding создает внутри контейнера отступы
          new EdgeInsets.all(5.0), child:
          new Column(children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                color: Colors.redAccent.shade100,
                child: new Text(_title,
                    style: new TextStyle( /// применили стиль с увеличенным размером
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis /// свойство overflow позволяет обрезать слишком длинный текст
                ),
              ),
            ),
            new Expanded(child:
            new Text(_text,
              softWrap: true, /// перенос текста с помощью параметра softWrap
              textAlign: TextAlign.justify, /// выравнивание по ширине, в случае слишком длинного текста, виджет Expanded обрежет все то что не войдет по высоте
            )
            )
          ]))
          )
        ])
    );
  }
}