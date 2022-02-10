import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  //const ChartBar({ Key? key }) : super(key: key);
  final String label;
  final double value;
  final double percentage;

  ChartBar({required this.label, required this.value, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: <Widget>[
          FittedBox(
            child: Text("${value.toStringAsFixed(2)}"),
            ),
          SizedBox(height: 5,),
          Container(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
              Container(
                height: 55,
                width: 10,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  color: Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: 10,
                height: percentage <= 1 && percentage >= 0 ? 55*percentage : 0,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              
            ]),
          ),
          SizedBox(height: 5,),
          Text(label),
      ],
    );
  }
}