import 'package:flutter/material.dart';
import 'package:projeto2/Home.dart';
import 'package:projeto2/Tela2.dart';
import 'package:projeto2/Tela3.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NavBar> {
  int currentIndex = 0; //variavel indice atual
  void changeIndex(int index){ //funcao para mudar o indice
    setState(() {
    currentIndex = index;  
    });
  }
  List<Widget>screens = [
    TelaHome(),
    Tela2(),
    Tela3()
  ]; ///lista que contem todas as telas

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//prove os componentes para a sua tela, você precisa dele para ter um titulo, container
    home: Scaffold(
      body: screens.elementAt(currentIndex),//o conteudo sera a tela que esta no index atual
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(label: "Tela 1", icon:Icon(Icons.account_circle)),
        BottomNavigationBarItem(label: "Tela 2", icon:Icon(Icons.account_circle)),
        BottomNavigationBarItem(label: "Tela 3", icon:Icon(Icons.account_circle)),
      ],
      currentIndex: currentIndex, //a posicao desejada
      onTap: changeIndex, //funcai que muda o index
      ),
    ),
    );
  }
}