import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Add a new spending', //Check it out buddy
      backgroundColor: Colors.purple,
      onPressed: () => {}, //to complete this function
      child: Icon(Icons.add),
    );
  }
}
