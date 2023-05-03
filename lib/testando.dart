// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:ola_mundo1/detalhes_de_um_livro.dart';

class testando extends StatefulWidget {
  const testando({super.key});

  @override
  State<testando> createState() => _testandoState();
}

class _testandoState extends State<testando> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetalhesDeUmLivro(),
    );
  }
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFD9D9D9),
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
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Próximas Encomendas",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const DadosDoLivro()
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
    );
  }
}

class DadosDoLivro extends StatelessWidget {
  const DadosDoLivro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(10),
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
                        const Text("Estado"),
                        Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 5),
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text("Entregador"),
                        )
                      ],
                    ),
                    const IconButton(
                        onPressed: null, icon: Icon(Icons.more_vert_outlined))
                  ],
                ),
                const Text("Destinatário"),
                const Text(
                  "Sr. Raúl Manuel",
                  style: TextStyle(color: Colors.black38),
                ),
                const Text("Número Encomendas"),
                const Text("RF-2012118",
                    style: TextStyle(color: Colors.black38)),
                Row(
                  children: const [
                    Icon(Icons.phone_android_rounded),
                    Text("921-69-76-45")
                  ],
                ),
                Row(
                  children: const [
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
    );
  }
}

// ignore: must_be_immutable
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
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: cor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(50)),
            child: Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: cor, borderRadius: BorderRadius.circular(40)),
              alignment: Alignment.center,
              child: Text(
                "$numero",
                style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Text(nome)
        ]));
  }
}




//Card(elevation: 15, child: SizedBox(height: 80, width: 80,), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),color: Colors.green,),