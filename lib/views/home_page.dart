import 'package:flutter/material.dart';
import 'package:turf_app/widgets/button.dart';
import 'package:turf_app/widgets/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 50),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(
                    title_1: 'Venue',
                    title_2: 'Battledoor Badminton Academy',
                    title_3: 'Get Special offer',
                    title_4: 'Up to 40%',
                  ),
                  SizedBox(width: 20),
                  MyCard(
                    title_1: 'Venue',
                    title_2: 'Battledoor Badminton Academy',
                    title_3: 'Get Special offer',
                    title_4: 'Up to 40%',
                  ),
                  MyCard(
                    title_1: 'Venue',
                    title_2: 'Battledoor Badminton Academy',
                    title_3: 'Get Special offer',
                    title_4: 'Up to 40%',
                  ),
                  SizedBox(width: 20),
                  MyCard(
                    title_1: 'Venue',
                    title_2: 'Battledoor Badminton Academy',
                    title_3: 'Get Special offer',
                    title_4: 'Up to 40%',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
