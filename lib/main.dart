import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schedule/pages/home_page.dart';
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: GoogleFonts.openSansCondensedTextTheme(
          Theme.of(context).textTheme,
        ),
        // textTheme: TextTheme(
          // caption: TextStyle(fontSize: 22.0, color: Colors.white),
        // ),
      ),

      home: HomePage(),
    );
  }
}



