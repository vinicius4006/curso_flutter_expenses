import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  //const ChartBar({ Key? key }) : super(key: key);
  final String label;
  final double value;
  final double percentage;

  ChartBar({required this.label, required this.value, required this.percentage});

  @override
  Widget build(BuildContext context) {
    print(percentage);
    return LayoutBuilder(
      builder: (ctx, constraints){
        return Column(
        children: <Widget>[
            Container(
              height: constraints.maxHeight * 0.15,
              child: FittedBox(
                child: Text("${value.toStringAsFixed(2)}"),
                ),
            ),
            SizedBox(height: constraints.maxHeight * 0.05,),
            Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                Container(
                  height: constraints.maxHeight * 0.6,
                  width: 10,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                    color: Color.fromRGBO(220, 220, 220, 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Container(
                  width: 10,
                  height: MediaQuery.of(context).orientation != Orientation.landscape ? 68*percentage : 92*percentage,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                
              ]),
            ),
            SizedBox(height: constraints.maxHeight * 0.05,),
            Container(
              height: constraints.maxHeight * 0.15,
              child: FittedBox(child: Text(label))),
        ],
      );
      },
      
    );
  }
}