import 'package:flutter/material.dart';
import "dart:math";

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff006e),
      appBar: AppBar(
        backgroundColor: Color(0xFFff006e),
        elevation: 16,
        title: Text("Ludo Game"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      index = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset("images/dice$index.png"),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {},
                  child: Image.asset("images/dice2.png"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
