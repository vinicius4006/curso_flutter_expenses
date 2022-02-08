import 'package:expenses/components/bodyPage.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  //const MyHomePage({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Despesas Pessoais"),
        actions: <Widget>[
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(child: BodyPage()),
      floatingActionButton: FloatingActionButton(
        onPressed: (){}, 
        child: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}