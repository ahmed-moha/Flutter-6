import 'package:flutter/material.dart';

import 'my_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Deegaan App"),
        centerTitle: true,
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.asset(
              "images/keen.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Keymaha duuleedka baladwayne",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Mogadishu, somalia",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.heart_broken,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("22")
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Divider(
            thickness: 3,
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyCard(icon: Icons.call, text: "CALL"),
              MyCard(icon: Icons.send, text: "SEND"),
              MyCard(icon: Icons.share, text: "SHARE")
            ],
          ),
          SizedBox(height: 12,),
          Container(
            padding: EdgeInsets.all(12),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi id laoreet eros. Morbi at lacus eu enim congue aliquet lacinia sed metus. Integer eget bibendum",
            textAlign: TextAlign.center,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyCard2 extends StatelessWidget {
  const MyCard2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.call, color: Colors.red),
        SizedBox(
          height: 5,
        ),
        Text(
          "CALL",
          style: TextStyle(color: Colors.red),
        )
      ],
    );
  }
}
