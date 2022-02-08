import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  //const TransactionForm({ Key? key }) : super(key: key);

    final titleController = TextEditingController();
    final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
          elevation: 5,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                child: TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Título",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                child: TextField(
                  controller: valueController,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Valor(R\$)",
                  ),
                ),
              ),
              
              ElevatedButton(
              onPressed: (){
                print("${titleController.text} || ${valueController.text}");
                },
               child: Text("Nova Transação", style: TextStyle(
                color: Colors.white,
              ),))
            ],
          ),
        );
  }
}