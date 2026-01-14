import 'package:flutter/material.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({super.key});

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {

  final List<Map<String, dynamic>> transactions = [
    {"title": "Food", "amount": -200},
    {"title": "Rent", "amount": -8000},
    {"title": "Salary", "amount": 50000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transactions"),
      ),

      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];

          return ListTile(
            title: Text(transaction["title"]),
            trailing: Text(
              "₹ ${transaction["amount"]}",
              style: TextStyle(
                color: transaction["amount"] < 0
                    ? Colors.red
                    : Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}