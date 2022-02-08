import 'package:expenses/myHomePage.dart';
import 'package:flutter/material.dart';


main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple,
    )
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      
      );
  }
}