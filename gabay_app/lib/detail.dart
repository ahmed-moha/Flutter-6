import 'package:flutter/material.dart';
import 'package:gabay_app/abwaan_model.dart';
import 'package:jiffy/jiffy.dart';

class Detail extends StatelessWidget {
  const Detail({
    Key? key,
    required this.abwaan,
  }) : super(key: key);
  final AbwaanModel abwaan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Image.asset(abwaan.image ?? "", fit: BoxFit.cover),
            ),
            SizedBox(
              height: 12,
            ),
            Text(abwaan.name ?? ""),
            SizedBox(
              height: 12,
            ),
            Text(Jiffy(abwaan.date).fromNow()),
            SizedBox(
              height: 12,
            ),
            Text(
              abwaan.gabay ?? "",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
