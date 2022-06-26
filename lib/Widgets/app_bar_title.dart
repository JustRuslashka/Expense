import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Task Manager App'),
        IconButton(
            onPressed: null, //to complete this function
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ))
      ],
    );
  }
}
