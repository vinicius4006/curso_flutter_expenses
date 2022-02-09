import 'dart:math';

import 'package:expenses/components/bodyPage.dart';
import 'package:flutter/material.dart';

import 'components/transactions_form.dart';
import 'models/transaction.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //const MyHomePage({ Key? key }) : super(key: key);
final List<Transaction>_transactions = [
    Transaction(
      id: "t0",
      title: "Conta Antiga",
      value: 400.0,
      date: DateTime.now().subtract(Duration(days: 33)),
    ),
    Transaction(
      id: "t1",
      title: "Novo Tênis de Corrida",
      value: 100.0,
      date: DateTime.now().subtract(Duration(days: 2)),
    ),
    Transaction(
      id: "t2",
      title: "Internet",
      value: 605.90,
      date: DateTime.now().subtract(Duration(days: 4)),
    ),
    
  ];
  

  List<Transaction> get _recentTransactions {
    return _transactions.where((tr) {
      return tr.date.isAfter(DateTime.now().subtract(
        Duration(days: 7)),
        );
    }).toList();
  }

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

    Navigator.of(context).pop();
    
   }

  _openTransactionFormModal(BuildContext context){
    showModalBottomSheet(
      context: context, 
      builder: (_) {
        return TransactionForm(_addTransactions);
      }
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Despesas Pessoais",
          ),
        actions: <Widget>[
          IconButton(
            onPressed: () => _openTransactionFormModal(context), 
            icon: Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(child: BodyPage(_transactions, _recentTransactions)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openTransactionFormModal(context), 
        child: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}