import 'package:flutter/material.dart';
import 'package:fundamentals2/models/expense.dart';
import 'package:fundamentals2/widget/expenses_list/expense_item.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenseList});

  final List<Expense> expenseList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenseList.length,
        itemBuilder: (cxt, index) => ExpenseItem(expense: expenseList[index]));
  }
}
