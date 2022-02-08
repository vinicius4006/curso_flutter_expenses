import 'dart:math';

import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/components/transactions_form.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'graphicCard.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({ Key? key }) : super(key: key);

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
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

  _addTransactions(String title, double value){
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(), 
      title: title, 
      value: value, 
      date: DateTime.now(),
      
      );
    setState(() {
      _transactions.add(newTransaction);
    });
   
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            TransactionList(_transactions),
            TransactionForm(_addTransactions),
      ],
    );
  }
}