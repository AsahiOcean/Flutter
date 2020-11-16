import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MailBox extends StatelessWidget {
  final String _title; // заголовок новостного сообщения
  /// final == переменная должна быть объявлена при создании экземпляра класса и не может быть изменена
  /// _ перед переменной говорит о том, что переменная скрыта и доступна только внутри объекта данного класса
  final String _text;
  String _imageUrl;

  /// название конструктора должно совпадать с именем нашего класса
  MailBox(this._title, this._text, {String imageUrl}) {
    _imageUrl = imageUrl;
  }

  @override
  Widget build(BuildContext context) {
    final double N = MediaQuery.of(context).size.height / 10;

    /// проверка не только на то что адрес изображения определен, но и что он не пустой
    if(_imageUrl != null && _imageUrl != ''){
      return new Container (
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
    } else {
      return new Container(
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
}

void main() =>  runApp(
    new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
            appBar: new AppBar(
                title: const Text('Уведомления',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  )),
              backgroundColor: Colors.pink,
            ),
            body: new MailBox('Поздравляем вас!',
                'Вы отважно продвигаетесь вперед, шаг за шагом позновая что-то новое преодолевая все сопутсвующие трудности! Так держать!',
                imageUrl: 'https://media3.giphy.com/media/etorBhgWm3wOgsYQdT/giphy.gif')
        )
    )
);