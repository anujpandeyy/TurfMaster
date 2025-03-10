import 'package:flutter/material.dart';
import 'package:turf_app/widgets/button.dart';

class TurfPage extends StatelessWidget {
  const TurfPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset('assets/turf/turf.jpg', fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Sunny Field',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Location: Central Park, Downtown',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 10),
            Text(
              'Timings: 6 AM - 10 PM',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 20),
            Text(
              'Available Sports:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                _buildSportButton('Cricket', Colors.blue),
                _buildSportButton('Football', Colors.green),
                _buildSportButton('Badminton', Colors.orange),
                _buildSportButton('Tennis', Colors.purple),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.yellow[700],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.white, size: 24),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Limited time offer! Flat 20% discount!',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  text: 'Bulk Enquiry',
                  onPressesd: () {},
                  color: const Color.fromARGB(255, 175, 173, 173),
                ),
                Button(
                  text: 'Book a Slot',
                  onPressesd: () {},
                  color: Colors.yellow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSportButton(String label, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color, width: 2),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
