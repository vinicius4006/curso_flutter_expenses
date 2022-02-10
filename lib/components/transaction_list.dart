import 'package:expenses/components/newGraphicCard.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'graphicCard.dart';

class TransactionList extends StatelessWidget {
  //const TransactionList({ Key? key }) : super(key: key);

  final List<Transaction> transactions;

  final void Function(String) deleteTransaction;

  TransactionList(this.transactions, this.deleteTransaction);
  

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 400,
      child: transactions.isEmpty ? Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Text(
            "Nenhuma Transação Cadastrada!",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 20,),
          Container(
            height: 200,
            child: Image.asset("assets/images/waiting.png",
            fit: BoxFit.cover,
            
            ),
          ),
        ],
      ) : ListView.builder(

        itemCount: transactions.length,
        //reverse: transactions.length > 3,
        itemBuilder: (ctx, index){
          final tr = transactions[index];
                    return NewGraphicCard(texto: tr.title, onlyId: tr.id ,preco: tr.value, time: tr.date, delete: deleteTransaction,);
        },
                     
      ),
    );
  }
}





