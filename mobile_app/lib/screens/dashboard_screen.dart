import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int balance = 45000; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text(
                      "Total Balance",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),

                    
                    Text(
                      "₹ $balance",
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            
            ElevatedButton(
              onPressed: () {
                setState(() {
                  balance = balance + 1000;
                });
              },
              child: const Text("Add ₹1000"),
            ),
          ],
        ),
      ),
    );
  }
}
