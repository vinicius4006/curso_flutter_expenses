import 'package:expenses/components/chart.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';

class BodyPage extends StatefulWidget {
  //const BodyPage({ Key? key }) : super(key: key);

   List<Transaction> transactions;
   List<Transaction> recentTransaction;
   void Function(String) deleteTransaction;
   double availableHeight;
 

   
  BodyPage(this.transactions, this.recentTransaction, this.deleteTransaction, this.availableHeight);

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
bool _showChart = false;

  @override
  Widget build(BuildContext context) {
    bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        if(isLandscape)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Exibir Gráfico"),
            Switch(value: _showChart, onChanged: (value){
              setState(() {
                _showChart = value;
              });
            }),
          ],
        ),
       
        if (_showChart || !isLandscape)
        Container(height: widget.availableHeight * (isLandscape ? 0.7 : 0.25) ,child: Chart(widget.recentTransaction)),
        //GraphicCard(texto: "Gráfico",color: Colors.blueAccent,),
        //GraphicCard(texto: "Lista de Transações", color: Colors.grey,),
        if (!_showChart || !isLandscape)
        Container(height: widget.availableHeight * 0.75 ,child: TransactionList(widget.transactions, widget.deleteTransaction)),
      ],
    );
  }
}