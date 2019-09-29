import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Expanded createCardSound(int imageNumber) {
    return Expanded(
      child: GestureDetector(
        onTap: () => print('Tap Card'),
        child: Card(
          elevation: 5,
          margin: EdgeInsets.all(10),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/$imageNumber.jpg'),
                    fit: BoxFit.fill),
              ),
              child: ListTile(
                title: Text('Titulo do Card'),
                subtitle: Text('Subitulo do Card'),
              )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createCardSound(0),
              createCardSound(1),
              createCardSound(2),
              createCardSound(3),
            ],
          ),
        ),
      ),
    );
  }
}
