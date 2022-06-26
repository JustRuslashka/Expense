import 'package:expense/Widgets/user_transaction.dart';
import 'package:flutter/material.dart';
import './Widgets/floating_button.dart';
import 'Widgets/app_bar_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo.',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

void _showAddCard() {
  bool addVisibility = true;
  bool graphVisibility = false;
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const AppBarTitle(), //Text inside the app bar
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [UserTransaction()],
        ),
      ),
      floatingActionButton: FloatingButton(), //Button in the
    );
  }
}
