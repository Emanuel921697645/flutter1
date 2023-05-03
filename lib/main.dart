import 'package:flutter/material.dart';
import 'package:ola_mundo1/testando.dart';
import 'package:ola_mundo1/testando1.dart';

void main() {
  //int valor = 10;
  //runApp( MyApp(title: "Emmanuel Ambriz", valor: valor,));
  //runApp(MeuApp(nome: 'Eka'));
  runApp(const testando());
  /*runApp(
    // ignore: prefer_const_constructors
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Emmanuel!"),
        ),
        body:  Center(
          child: Text(
            'Olá Mundo',
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
        ),
      ),
    ),
  );         */
}

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Emmanuel Aprendendo',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}*/

class MyApp extends StatelessWidget {
  String title;
  int valor;

  MyApp({super.key, required this.title, required this.valor});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
        ),
        body: Center(
          child: Text(
            'Olá Mundo já é ' + this.valor.toString(),
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class MeuApp extends StatefulWidget {
  final String nome;

  const MeuApp({super.key, required this.nome});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  int salario = 250;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap:() {
         
          setState(() {
            salario = salario + 100;
          });
          print('Novo salário $salario');
          
        },
        child: Text(
          'O salário de ${widget.nome} é $salario',
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}


