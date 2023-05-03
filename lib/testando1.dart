import 'package:flutter/material.dart';

class testando1 extends StatefulWidget {
  const testando1({super.key});

  @override
  State<testando1> createState() => _testando1State();
}

class _testando1State extends State<testando1> {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       bottomNavigationBar: BottomNavigationBar( 
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.orange,
        showUnselectedLabels: true,
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.account_tree_outlined,),label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.agriculture_outlined,),label: "Encomendas"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_sharp,),label: "Classif"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,),label: "Perfil")
        ]
        ),
      ),
    );
  }
}