import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  //const TransactionForm({ Key? key }) : super(key: key);

    final titleController = TextEditingController();
    final valueController = TextEditingController();

    final void Function(String, double) onSubmit;

    TransactionForm(this.onSubmit);

   _submitForm() {

    final title = titleController.text;
    final value = double.tryParse(valueController.text) ?? 0.0;

    if(title.isEmpty || value <= 0)
      return;
    

    onSubmit(title, value);

  }

  @override
  Widget build(BuildContext context) {
    return Card(
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
                child: TextField(
                  controller: titleController,
                  onSubmitted: (_) => _submitForm(),
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
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  onSubmitted: (_) => _submitForm(),
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Valor(R\$)",
                  ),
                ),
              ),
              
              ElevatedButton(
               child: Text("Nova Transação", style: TextStyle(
                color: Colors.white,
              ),),
              onPressed:_submitForm,)
            ],
          ),
        );
  }
}