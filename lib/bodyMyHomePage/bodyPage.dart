import 'package:expenses/bodyMyHomePage/graphicCard.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';

class BodyPage extends StatelessWidget {
  //const BodyPage({ Key? key }) : super(key: key);

    final titleController = TextEditingController();
    final valueController = TextEditingController();
    

    final _transactions = [
    Transaction(
      id: "t1",
      title: "Novo Tênis de Corrida",
      value: 100.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Conta de Luz",
      value: 211.3,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t3",
      title: "PC Gamer",
      value: 188.0,
      date: DateTime.now(),
    ),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Card(
          color: Colors.blue,
          child: Text("Gráfico"),
        ),
        //GraphicCard(texto: "Gráfico",color: Colors.blueAccent,),
        //GraphicCard(texto: "Lista de Transações", color: Colors.grey,),
        Column(
          children: _transactions.map((tr) {
            return GraphicCard(texto: tr.title, color: Colors.yellowAccent, preco: tr.value,time: DateTime.now());
          }).toList(),   
        ),
        Card(
          elevation: 5,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                child: TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Título",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                child: TextField(
                  controller: valueController,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Valor(R\$)",
                  ),
                ),
              ),
              
              ElevatedButton(
              onPressed: (){
                print("${titleController.text} || ${valueController.text}");
                },
               child: Text("Nova Transação", style: TextStyle(
                color: Colors.white,
              ),))
            ],
          ),
        ),
      ],
    );
  }
}