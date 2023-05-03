import 'dart:ui';

import 'package:flutter/material.dart';

class testando extends StatefulWidget {
  const testando({super.key});

  @override
  State<testando> createState() => _testandoState();
}

class _testandoState extends State<testando> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0XFFD9D9D9),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CaixaEntrega(
                      nome: "Entregue",
                      cor: Colors.green,
                      numero: 8,
                    ),
                    CaixaEntrega(
                      nome: "Não Enviadas",
                      cor: Colors.red,
                      numero: 3,
                    )
                  ],
                )),
                SizedBox(height: 20,),
                Text("Próximas Encomendas", style: TextStyle(fontSize: 24, fontWeight:FontWeight.bold),),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(flex: 1, child: Image.asset("images/1.png")),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Estado"),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      margin: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 5),
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text("Entregador"),
                                    )
                                  ],
                                ),
                                IconButton(
                                    onPressed: null,
                                    icon: Icon(Icons.more_vert_outlined))
                              ],
                            ),
                            Text("Destinatário"),
                            Text(
                              "Sr. Raúl Manuel",
                              style: TextStyle(color: Colors.black38),
                            ),
                            Text("Número Encomendas"),
                            Text("RF-2012118",
                                style: TextStyle(color: Colors.black38)),
                            Row(
                              children: [
                                Icon(Icons.phone_android_rounded),
                                Text("921-69-76-45")
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.place,
                                  color: Colors.orange,
                                ),
                                Text("Centralidade do Kilamba")
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.orange,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_tree_outlined,
                  ),
                  label: "Dashboard"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.agriculture_outlined,
                  ),
                  label: "Encomendas"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_outline_sharp,
                  ),
                  label: "Classificações"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle_outlined,
                  ),
                  label: "Perfil")
            ]),
      ),
    );
  }
}

class CaixaEntrega extends StatelessWidget {
  int numero;
  String nome;
  Color cor;

  CaixaEntrega(
      {Key? key, required this.numero, required this.nome, required this.cor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: cor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(50)),
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: cor, borderRadius: BorderRadius.circular(40)),
              alignment: Alignment.center,
              child: Text(
                "$numero",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Text(nome)
        ]),
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white));
  }
}




//Card(elevation: 15, child: SizedBox(height: 80, width: 80,), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),color: Colors.green,),