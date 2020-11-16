import 'package:flutter/material.dart';
import 'ImageCheck/imagetrue.dart';
import 'ImageCheck/imagefalse.dart';

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
      return
        ImageTrue(N: N, imageUrl: _imageUrl, title: _title, text: _text);
    } else {
      return ImageFalse(title: _title, text: _text);
    }
  }
}