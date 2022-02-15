import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  //const AppBar({ Key? key }) : super(key: key);
  dynamic _openTransactionFormModal;

  appBar(this._openTransactionFormModal);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
  }
}