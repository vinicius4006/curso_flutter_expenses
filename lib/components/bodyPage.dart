import 'package:expenses/components/chart.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';

class BodyPage extends StatelessWidget {
  //const BodyPage({ Key? key }) : super(key: key);

  final List<Transaction> transactions;
  final List<Transaction> recentTransaction;
  final void Function(String) deleteTransaction;
  BodyPage(this.transactions, this.recentTransaction, this.deleteTransaction);
 

  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Chart(recentTransaction),
        //GraphicCard(texto: "Gráfico",color: Colors.blueAccent,),
        //GraphicCard(texto: "Lista de Transações", color: Colors.grey,),
        TransactionList(transactions, deleteTransaction),
      ],
    );
  }
}