import 'package:flutter/material.dart';
import "package:intl/intl.dart";






class GraphicCard extends StatelessWidget {
  //const GraphicCard({ Key? key, String? texto, }) : super(key: key);

  String? texto;
  Color? color;
  double preco;
  DateTime time;

  GraphicCard({required this.texto, required this.color, required this.preco, required this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            decoration: BoxDecoration(
             border: Border.all(
               width: 2,
               color: Color.fromRGBO(128, 0, 128, 0.7),
             ),
                      
            ),
            child: Text("R\$ "+preco.toStringAsFixed(2),
            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(texto.toString(), style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16),),
              Text(DateFormat('d MMM y').format(time), style: TextStyle(color: Colors.grey),),
            ],
          ),
          //Icon(Icons.delete, color: Colors.red,)
        ],
      ),
    );
  }
}