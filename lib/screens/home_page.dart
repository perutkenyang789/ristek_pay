import 'package:flutter/material.dart';
import 'package:ristek_pay/widgets/transaction_card.dart';
import 'package:ristek_pay/widgets/profile_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Transaction> transactions = [
    Transaction(
      enduser: "Alex Abednego",
      date: DateTime(2024, 11, 6),
      amount: 300000,
      type: "Credit",
    ),
    Transaction(
      enduser: "John Doe",
      date: DateTime(2024, 10, 27),
      amount: 20000,
      type: "Debit",
    ),
    Transaction(
      enduser: "Sean Matthew",
      date: DateTime(2024, 10, 15),
      amount: 75000,
      type: "Credit",
    ),
    Transaction(
      enduser: "Malvin Siabot",
      date: DateTime(2024, 9, 30),
      amount: 20000,
      type: "Credit",
    ),
    Transaction(
      enduser: "Jane Doe",
      date: DateTime(2024, 9, 20),
      amount: 50000,
      type: "Credit",
    ),
    Transaction(
      enduser: "Michael Johnson",
      date: DateTime(2024, 8, 12),
      amount: 100000,
      type: "Debit",
    ),
    Transaction(
      enduser: "Sarah Lee",
      date: DateTime(2024, 7, 5),
      amount: 30000,
      type: "Credit",
    ),
    Transaction(
      enduser: "David Kim",
      date: DateTime(2024, 6, 30),
      amount: 80000,
      type: "Debit",
    ),
    Transaction(
      enduser: "Emily Chen",
      date: DateTime(2024, 5, 21),
      amount: 45000,
      type: "Debit",
    ),
    Transaction(
      enduser: "Tom Wilson",
      date: DateTime(2024, 4, 10),
      amount: 25000,
      type: "Debit",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Column(
        children: [
          // Top Padding
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),

          // Profile Card
          ProfileCard(
            Profile(
              username: 'Jack Sparrow',
              npm: '1706979342',
              bio: 'Captain of the Black Pearl',
              balance: 1000000,
            ),
          ),

          // Spacing
          const SizedBox(
            height: 30.0,
          ),

          // Transaction Title
          Text(
            'Riwayat Transaksi',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),

          // Spacing
          const SizedBox(
            height: 20.0,
          ),

          // Transaction List
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TransactionCard(transactions[index]),
                ));
              },
            ),
          ),

          // Bottom Padding
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
