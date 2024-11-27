import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Transaction {
  final String enduser;
  final DateTime date;
  final int amount;
  final String type; // Debit or Credit

  Transaction({
    required this.enduser,
    required this.date,
    required this.amount,
    required this.type,
  });
}

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  const TransactionCard(this.transaction, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 337.0,
      height: 80.0,
      padding: EdgeInsets.symmetric(
        vertical: 18.0,
        horizontal: 20.0,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Enduser & Date Info Column
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Enduser
              Text(
                transaction.enduser,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),

              // Date
              Text(
                '${transaction.date.day} ${_getMonthName(transaction.date.month)} ${transaction.date.year}',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Text(
            'Rp ${transaction.amount.toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: _getTransactionTypeColor(transaction.type),
            ),
          )
        ],
      ),
    );
  }

  _getTransactionTypeColor(String type) {
    switch (type) {
      case 'Debit':
        return HexColor('#EE4545');
      case 'Credit':
        return HexColor('#20C000');
    }
  }

  _getMonthName(int month) {
    switch (month) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
    }
  }
}
