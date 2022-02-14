import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionForm extends StatefulWidget {
    final void Function(String, double, DateTime) onSubmit;

    TransactionForm(this.onSubmit);

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  //const TransactionForm({ Key? key }) : super(key: key);
    final _titleController = TextEditingController();
    final _valueController = TextEditingController();
    DateTime _selectedDate = DateTime.now();

   _submitForm() {

    final title = _titleController.text;
    final value = double.tryParse(_valueController.text) ?? 0.0;

    if(title.isEmpty || value <= 0)
      return;
    

    widget.onSubmit(title, value, _selectedDate);

  }

  _showDatePicker(){
    showDatePicker(
      context: context, 
      initialDate: DateTime.now(), 
      firstDate: DateTime(2000), 
      lastDate: DateTime.now(),
      ).then((pickedDate) {
        if(pickedDate == null){
          return;
        }
        setState(() {
          _selectedDate = pickedDate;
        });
      });
      
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.only(
                top: 10,
                right: 10,
                left: 10,
                bottom: 10 + MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    controller: _titleController,
                    onSubmitted: (_) => _submitForm(),
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Título",
                    ),
                  ),
                  TextField(
                    controller: _valueController,
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    onSubmitted: (_) => _submitForm(),
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: "Valor(R\$)",
                    ),
                  ),
                  Container(
                    height: 70,
                     margin: EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                      Expanded(
                        child: Text
                        (
                          _selectedDate == null ? "Nenhum data selecionada!" 
                          : "Data Selecionada: ${DateFormat("dd/MM/y").format(_selectedDate)}", 
                        ),
                      ),
                      TextButton(
                        onPressed: _showDatePicker, 
                        child: Text(
                          "Selecionar Data",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),))
                    ],),
                  ),
                  ElevatedButton(
                   child: Text("Nova Transação", style: TextStyle(
                    color: Colors.white,
                  ),),
                  onPressed:_submitForm,)
                ],
              ),
            ),
          ),
    );
  }
}