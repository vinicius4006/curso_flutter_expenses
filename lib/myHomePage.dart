import 'dart:io';
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
    
    
  ];
  

  List<Transaction> get _recentTransactions {
    return _transactions.where((tr) {
      return tr.date.isAfter(DateTime.now().subtract(
        Duration(days: 7)),
        );
    }).toList();
  }

   _addTransactions(String title, double value, DateTime date){
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(), 
      title: title, 
      value: value, 
      date: date,
      
      );
    setState(() {
      _transactions.add(newTransaction);
    });

    Navigator.of(context).pop();
    
   }

   _deleteTransaction(String id){
     setState(() {
       _transactions.removeWhere((tr) => tr.id == id);
     });
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
   
      final appBar = AppBar(
        centerTitle: true,
        title: Text(
          "Despesas Pessoais",
          ),
        actions: <Widget>[
          
          IconButton(
            onPressed: () => _openTransactionFormModal(context), 
            icon: Icon(Icons.add))
        ],
      );
    final availabelHeight = MediaQuery.of(context).size.height - appBar.preferredSize.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: BodyPage(_transactions, _recentTransactions, _deleteTransaction, availabelHeight)),
      floatingActionButton: Platform.isIOS ? Container() : FloatingActionButton(
        onPressed: () => _openTransactionFormModal(context), 
        child: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}