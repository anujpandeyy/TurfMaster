import 'package:flutter/material.dart';

class Turfcard extends StatelessWidget {
  final String myImg;
  final String text_1;
  final String text_2;
  final String text_3;
  final String text_4;
  const Turfcard({
    super.key,
    required this.myImg,
    required this.text_1,
    required this.text_2,
    required this.text_3,
    required this.text_4,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 350,
        child: Stack(
          children: [
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: SizedBox(
                height: 200,
                width: 180,

                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                  child: Image.asset(myImg),
                ),
              ),
            ),
            Positioned(
              top: 210,
              child: Text(
                text_1,
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: 235,
              child: Text(
                text_2,
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
            ),
            Positioned(
              top: 255,
              child: Text(
                text_3,
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
              ),
            ),
            Positioned(
              top: 280,
              child: Text(
                text_4,
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w200),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
