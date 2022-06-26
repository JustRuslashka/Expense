import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../Models/transactions.dart';

class UserTransaction extends StatefulWidget {
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transactions> _userTransaction = [
    Transactions(
        date: DateTime.now(), id: '100', price: 32.99, title: 'New Shoes'),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transactions(
        title: txTitle,
        price: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  void _showAddCard() {
    bool addVisibility = false;
    bool graphVisibility = true;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(
            _addNewTransaction, _showAddCard), //do not know what is null for
        TransactionList(_userTransaction),
      ],
    );
  }
}
