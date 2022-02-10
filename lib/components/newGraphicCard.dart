import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewGraphicCard extends StatelessWidget {
  //const NewGraphicCard({ Key? key }) : super(key: key);

  String texto;
  double preco;
  DateTime time;

  NewGraphicCard({required this.texto, required this.preco, required this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
                      elevation: 5,
                      margin: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 5,
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: FittedBox(child: Text("R\$${preco}")),
                          ),
                        ),
                        title: Text(
                          texto,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        subtitle: Text(
                          DateFormat('d MMM y').format(time),
                        ),
                        
                      ),
                    );
  }
}