import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MyFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Верстка теория'),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              color: Colors.red[400],
              child: Text(
                'data1',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black54,
                ),
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
            ),
            Icon(
              Icons.favorite,
              size: 50,
              color: Colors.redAccent,
            )
            // BiggerColorBox(),
            // Flexible(
            //   fit: FlexFit.tight,
            //   flex: 1,
            //   child: ColorBox()),
            // SizedBox(
            //   width: 40,
            // ),
            // SizedBox(
            //     width: 100,
            //     height: 100,
            //     child: ColorBox()),
            // Expanded(
            //   flex: 3,
            //   child: ColorBox()),
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.redAccent[400],
        border: Border.all(),
      ),
      // child: Text('123'),
    );
  }
}
class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.green[500],
        border: Border.all(),
      ),
    );
  }
}
