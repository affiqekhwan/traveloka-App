import 'package:flutter/material.dart';
import 'package:traveloka/models/place_list.dart';

class DetailPage extends StatelessWidget {
  final PlaceList place;

  DetailPage({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(place.imageUrl),
            SizedBox(height: 16),
            Text(
              place.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  "Address: ", // Display the label
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  place.address,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Email: ", // Display the label
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  place.email,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Description: ", // Display the label
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  place.discription,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}