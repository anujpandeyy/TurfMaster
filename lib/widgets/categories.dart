import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String img;
  final String text;
  const Categories({super.key, required this.img, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(width: 2.0, color: Colors.yellow),
          ),
          child: ClipOval(child: Image.asset(img)),
        ),
        SizedBox(height: 10),
        Text(text),
      ],
    );
  }
}
