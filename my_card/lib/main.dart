import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff264653),
      appBar: AppBar(
        title: const Text("My Card"),
        backgroundColor: const Color(0xff264653),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3.0),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/tiger.jpg"),
                    radius: 45,
                  ),
                ),
              ],
            ),
            Text(
              "Name",
              style: TextStyle(color: Color(0xffa5a58d), fontSize: 20),
            ),
            SizedBox(height: 10,),
            Text(
              "AHMED MOHAMED",
              style: TextStyle(
                color: Color(0xffa5a58d),
                fontSize: 24
              ),
            ),
            SizedBox(height: 25,),
            Text("Work",style: TextStyle(color:Color(0xffa5a58d),fontSize: 20 )),
            SizedBox(height: 10,),
            Text("MOBILE DEVELOPER",style: TextStyle(color: Color(0xffa5a58d),fontSize: 24),),
            SizedBox(height: 25,),
            Text("Email",style: TextStyle(color: Color(0xffa5a58d),fontSize: 20),),
            SizedBox(height: 10,),
           Row(children: [
            Icon(Icons.email,color: Color(0xffa5a58d),size: 30,),
            SizedBox(width: 12,),
             Text("AHMEDDHAQAN11@GMAIUL",style: TextStyle(color: Color(0xffa5a58d),fontSize: 20),)
           ],)
          ],
        ),
      ),
    );
  }
}
