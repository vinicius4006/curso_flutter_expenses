import 'package:expenses/components/graphicCard.dart';
import 'package:expenses/components/transactions_form.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';

class BodyPage extends StatelessWidget {
  //const BodyPage({ Key? key }) : super(key: key);

  
    

    final _transactions = [
    Transaction(
      id: "t1",
      title: "Novo Tênis de Corrida",
      value: 100.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Internet",
      value: 65.0,
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
        TransactionForm(),
      ],
    );
  }
}