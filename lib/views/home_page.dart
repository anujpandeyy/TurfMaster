import 'package:flutter/material.dart';
import 'package:turf_app/data/card.dart';
import 'package:turf_app/views/turf_page.dart';
import 'package:turf_app/widgets/card.dart';
import 'package:turf_app/widgets/categories.dart';
import 'package:turf_app/data/turf_card.dart';
import 'package:turf_app/widgets/turfcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Bookings'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: _onItemTap,
      ),
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
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top Picks For You', style: TextStyle(fontSize: 20.0)),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: turfData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (index) => TurfPage()),
                        );
                      }
                    },
                    child: (Turfcard(
                      myImg: turfData[index]['myImg'],
                      text_1: turfData[index]['text_1'],
                      text_2: turfData[index]['text_2'],
                      text_3: turfData[index]['text_3'],
                      text_4: turfData[index]['text_4'],
                    )),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
