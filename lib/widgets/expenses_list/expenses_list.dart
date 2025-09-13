import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemove,
  });

  final void Function(Expense expense) onRemove;
  final List<Expense> expenses;

  @override
  Widget build(context) {
    //gives a scrollable list, but it should create this items only when they are visible or about to become visible
    return ListView.builder(
      //to know how many items should be displayed
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
        child: ExpenseItem(expense: expenses[index]),
        key: ValueKey(expenses[index]),
        //allows to trigger a function when a widget is dismissed
        onDismissed: (direction) => onRemove(expenses[index]),
        background: Container(
          color: Theme.of(context).colorScheme.error,
          margin: EdgeInsets.symmetric(horizontal: Theme.of(context).cardTheme.margin!.horizontal),
        ),
      ),
    );
  }
}
