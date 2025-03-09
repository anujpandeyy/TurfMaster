import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title_1;
  final String title_2;
  final String title_3;
  final String title_4;
  final Color myColor;

  const MyCard({
    super.key,
    required this.title_1,
    required this.title_2,
    required this.title_3,
    required this.title_4,
    required this.myColor,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 300,
          decoration: BoxDecoration(
            color: myColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 17.0),
          child: Text(
            title_1,
            style: TextStyle(color: Colors.grey, fontSize: 14.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 18.0, left: 17.0),
          child: SizedBox(
            width: 200,
            child: Divider(thickness: 1.0, color: Colors.grey),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 17.0),
          child: Text(
            title_2,
            style: TextStyle(color: Colors.white, fontSize: 14.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 45.0, left: 17.0),
          child: Text(
            title_3,
            style: TextStyle(
              color: Colors.white,
              fontSize: 21.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 70.0, left: 17.0),
          child: Text(
            title_4,
            style: TextStyle(
              color: Colors.white,
              fontSize: 21.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
