import 'package:flutter/material.dart';
import 'package:newz_plan/models/list_of_news.dart';

class NewsCard extends StatelessWidget {
  final NewsList news;

  const NewsCard({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Add elevation for a shadow effect
      margin: EdgeInsets.all(12), // Add margin around the card
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              news.Title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ClipRRect(
            borderRadius:
                BorderRadius.circular(8), // Add rounded corners to the image
            child: Image.network(
              news.ImageURL,
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity, // Set image width to match parent width
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              news.discription,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
