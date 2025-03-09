import 'package:flutter/material.dart';
import 'package:turf_app/data/card.dart';
import 'package:turf_app/widgets/card.dart';
import 'package:turf_app/widgets/categories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'), centerTitle: true),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MyCard(
                    title_1: cardData[index]['title_1'],
                    title_2: cardData[index]['title_2'],
                    title_3: cardData[index]['title_3'],
                    title_4: cardData[index]['title_4'],
                    myColor: cardData[index]['myColor'],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Categories(
                  img: 'assets/home/cricket-icon.png',
                  text: 'Cricket',
                ),
                Categories(
                  img: 'assets/home/ball-football-icon.png',
                  text: 'Football',
                ),
                Categories(
                  img: 'assets/home/shuttlecock-badminton-icon.png',
                  text: 'Badminton',
                ),
                Categories(
                  img: 'assets/home/tennis-ball-icon.png',
                  text: 'Tennis',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
