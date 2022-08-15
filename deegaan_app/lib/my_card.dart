import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key, required this.icon, required this.text}) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.red),
        SizedBox(
          height: 5,
        ),
        Text(
         text,
          style: TextStyle(color: Colors.red),
        )
      ],
    );
  }
}
