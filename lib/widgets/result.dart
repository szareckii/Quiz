import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int count;
  final int total;
  final Function onClearState;

  Result({Key key,
    this.count,
    this.total,
    this.onClearState
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String msg = '';
    Widget img;
    if (0 <= count && count <= 1) {
      msg = 'Бла-бла скукота!';
      img = Image.asset('assets/images/bad.jpg');
    } else if (2 <= count && count <= 3) {
      msg = 'Уже лучше!';
      img = Image.asset('assets/images/normal.jpg');
    } else  {
      msg = 'Ваще огонь!';
      img = Image.asset('assets/images/good.jpg');
    }

    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset( 2.0, 5.0, ),
          )
        ],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(colors: [
          Color(0xFF5337ff),
          Color(0xFF8131ff),
          Color(0xFFbd27ff),
        ]),
      ),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),

          Divider(
            color: Colors.white,
          ),
          Text(
            'Верно ответил на $count из $total',
          ),
          Divider(
            color: Colors.white,
          ),

          FlatButton(
            onPressed: onClearState,
            child: Text(
                'Пройти еще раз',
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
