import 'package:expense_tracker/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Cinema',
      amount: 12,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Cinemasdf',
      amount: 1232,
      date: DateTime.now(),
      category: Category.travel,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Text('The chart'),
        ExpensesList(expenses: _registeredExpenses)
      ],
    ));
  }
}
