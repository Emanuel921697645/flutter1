import 'package:flutter/material.dart';
import 'package:ola_mundo1/testando.dart';

class DetalhesDeUmLivro extends StatelessWidget {
  const DetalhesDeUmLivro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const DadosDoLivro(),
              ContainerDeBordaRedondaELarguraInfinita(
                child: const Text(
                  "22.750 AOA",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ToggleButtons(
                  borderWidth: 0,
                  onPressed: (int index) {},
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  selectedColor: Colors.white,
                  fillColor: Colors.orange,
                  color: Colors.grey,
                  constraints: BoxConstraints(
                    minHeight: 40.0,
                    minWidth: (MediaQuery.of(context).size.width - 20) / 3,
                  ),
                  isSelected: const [true, false, false],
                  children: const [Text("Itens"), Text("Itens"), Text("Itens")],
                ),
              ),
              ContainerDeBordaRedondaELarguraInfinita(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Número Encomenda"),
                  Text(
                    "Ref-2012118",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Data de Recepção"),
                  Text(
                    "2023-04-12 08:30",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Data de Entrega"),
                  Text(
                    "2023-04-12 15:30",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Data de Confirmação de Entrega"),
                  Text(
                    "2023-04-12 17:30",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Qaunt. Itens"),
                  Text(
                    "8",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Valor Total"),
                  Text(
                    "22.750 AOA",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Classificação Entrega",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.sentiment_very_satisfied_rounded,
                      color: Colors.orange,
                      size: 100,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "5.0",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ))
            ],
          ),
        )),
      ),
    );
  }
}

// ignore: must_be_immutable
class ContainerDeBordaRedondaELarguraInfinita extends StatelessWidget {
  double borderRadiusValue;
  Widget child;
  ContainerDeBordaRedondaELarguraInfinita(
      {super.key, required this.child, this.borderRadiusValue = 10});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadiusValue),
      ),
      child: child,
    );
  }
}
