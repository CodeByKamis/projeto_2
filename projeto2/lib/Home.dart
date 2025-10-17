import 'package:flutter/material.dart';

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView( //permite a rolagem de tela
          children: [
            Column( //essa é a DIV - tipo uma section, quando eu termino de utilizar ela, eu abro uma outra dentro do filho primário que o children de cima ^^ 
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