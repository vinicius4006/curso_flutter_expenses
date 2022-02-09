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
      height: 300,
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
        itemBuilder: (ctx, index){
          final tr = transactions[index];
                    return GraphicCard(texto: tr.title, preco: tr.value,time: tr.date);
        },
                     
      ),
    );
  }
}





