import 'package:expenses/components/transaction_user.dart';
import 'package:flutter/material.dart';


class BodyPage extends StatelessWidget {
  //const BodyPage({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Card(
          color: Colors.blue,
          child: Text("Gráfico"),
        ),
        //GraphicCard(texto: "Gráfico",color: Colors.blueAccent,),
        //GraphicCard(texto: "Lista de Transações", color: Colors.grey,),
        TransactionUser(),
        
      ],
    );
  }
}