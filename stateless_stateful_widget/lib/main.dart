import 'package:flutter/material.dart';
import 'MailBox/mailbox.dart';

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
            body: new
            MailBox(
                // title
                'Поздравляем вас!',
                // message
                'Вы отважно продвигаетесь вперед, шаг за шагом позновая что-то новое и преодолевая все сопутсвующие трудности! Так держать!',
                imageUrl:
                'https://media3.giphy.com/media/etorBhgWm3wOgsYQdT/giphy.gif'
            )
        )
    )
);