import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          scrollDirection: Axis.horizontal,//indica que a rolgem sera na horizontal
          children: [
            Row(
              children: [
               Container(
                  width: 400,
                  height: 600,
                  color: Colors.blue,
                ),
                Container(
                  width: 400,
                  height: 600,
                  color: Colors.pink,
                ),
                Container(
                  width: 400,
                  height: 600,
                  color: Colors.yellow,
                ),
                Container(
                  width: 400,
                  height: 600,
                  color: Colors.deepOrange,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}