import 'package:flutter/material.dart';

import 'graphicCard.dart';

class TransactionList extends StatelessWidget {
  //const TransactionList({ Key? key }) : super(key: key);

  final List lista;

  TransactionList(this.lista);
  

  @override
  Widget build(BuildContext context) {
    return Column(
              children: lista.map((tr) {
                return GraphicCard(texto: tr.title, preco: tr.value,time: DateTime.now());
              }).toList(),   
              
            );
  }
}