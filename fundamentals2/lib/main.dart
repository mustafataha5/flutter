
import 'package:flutter/material.dart';
import 'package:fundamentals2/widget/expenses.dart';



void main (){
  runApp( MaterialApp(
    theme: ThemeData(useMaterial3: true),
    home: const Expenses(),
  ));
}