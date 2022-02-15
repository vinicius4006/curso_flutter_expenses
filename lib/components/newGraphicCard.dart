import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewGraphicCard extends StatelessWidget {
  //const NewGraphicCard({ onlyId? onlyId }) : super(onlyId: onlyId);

  String texto;
  String onlyId;
  double preco;
  DateTime time;
  final void Function(String) delete;

  NewGraphicCard({required this.texto, required this.onlyId,required this.preco, required this.time, required this.delete});

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
                        trailing: MediaQuery.of(context).size.width > 480 ? 
                        ElevatedButton.icon(
                          onPressed: () => delete(onlyId),
                           icon: const Icon(Icons.delete_sweep_sharp), 
                           label: const Text("Excluir"))
                        :IconButton(onPressed: () => delete(onlyId), icon: Icon(Icons.delete_sweep_sharp, color: Colors.redAccent,), ),
                        
                      ),

                    );
  }
}