import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

import 'graphicCard.dart';

class TransactionList extends StatelessWidget {
  //const TransactionList({ Key? key }) : super(key: key);

  final List<Transaction> transactions;

  TransactionList(this.transactions);
  

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 240,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (ctx, index){
          final tr = transactions[index];
                    return GraphicCard(texto: tr.title, preco: tr.value,time: DateTime.now());
        },
                     
      ),
    );
  }
}





