
import 'package:expenses/myHomePage.dart';
import 'package:flutter/material.dart';


main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.purple,
          fontFamily: "Quicksand",
          textTheme: ThemeData.light().textTheme.copyWith(
            headline6: TextStyle(
              fontFamily: "OpenSans",
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          appBarTheme: AppBarTheme(
           titleTextStyle: TextStyle(
             fontSize: 20,
             fontFamily: "OpenSans",
             fontWeight: FontWeight.w700),
          )
          //accentColor: Colors.amber, depreciado
      ),
      //debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      
      );
  }
}