import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fundamentals2/widget/expenses_list/expense_list.dart';
import 'package:fundamentals2/models/expense.dart';
import 'package:fundamentals2/widget/new_expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _listReg = [
    Expense(
        title: "Flutter Course",
        amount: 20.5,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: "Cenima",
        amount: 15,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  void _addNewExpense() {
    showModalBottomSheet(context: context, builder: (ctx)=> const NewExpense());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp Taha'),
        actions: [
          IconButton(onPressed: _addNewExpense, icon: const Icon(Icons.add)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Chart"),
          Expanded(child: ExpenseList(expenseList: _listReg)),
        ],
      ),
    );
  }
}
