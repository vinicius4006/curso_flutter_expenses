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

    //Navigator.of(context);
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
        title: Text("Despesas Pessoais"),
        actions: <Widget>[
          IconButton(
            onPressed: () => _openTransactionFormModal(context), 
            icon: Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(child: BodyPage(_transactions)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openTransactionFormModal(context), 
        child: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}