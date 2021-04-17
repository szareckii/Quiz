import 'dart:ui';

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Контейнер Теория'),
      ),
      body: Container(
        width: 200,
        height: 400,
        decoration: BoxDecoration(
          image: DecorationImage(
             image: Image.network(
                 'https://funik.ru/wp-content/uploads/2019/03/98d35ecdbe2be073cbf7.jpg'
             ).image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}

// class MyContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Контейнер Теория'),
//       ),
//       body: Center(
//         child: Container(
//           decoration: BoxDecoration(
//             // shape: BoxShape.circle,
//             border: Border.all(),
//             color: Colors.amber[600],
//           ),
//           alignment: Alignment.center,
//           // width: 300,
//           // height: 300,
//           margin: const EdgeInsets.fromLTRB(100, 10, 10, 50),
//           padding: const EdgeInsets.all(0.0),
//           child: Text('qwewqeasd'),
//         ),
//       ),
//     );
//   }
// }
