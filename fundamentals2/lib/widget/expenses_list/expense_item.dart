import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fundamentals2/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      margin: const EdgeInsets.all(10),
      color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        child: Column(
          children: [
            Text(expense.title,textAlign: TextAlign.center,),
            const SizedBox(height: 10,), 
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    
                    Icon(categoryIcon[expense.category]  ) , 
                    const SizedBox(width: 8,),
                    Text(expense.formattedDate),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ); 
  }
}
