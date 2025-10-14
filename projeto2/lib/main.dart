import 'package:flutter/material.dart';

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
    telaHome(),
    tela2(),
    tela3()
  ]; ///lista que contem todas as telas

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//prove os componentes para a sua tela, você precisa dele para ter um titulo, container
    home: Scaffold(
      body: screens.elementAt(currentIndex),//o conteudo sera a tela que esta no index atual
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>
      ),
    ),
    );
  }
}