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
      ),
      body: BodyPage(),
    );
  }
}