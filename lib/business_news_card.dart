import 'package:flutter/material.dart';
import 'package:newz_plan/models/business_news.dart';

class BusinessNewsCard extends StatelessWidget {
  final BusinessNews news;
  final VoidCallback onSave;

  const BusinessNewsCard({
    Key? key,
    required this.news,
    required this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Add elevation for a shadow effect
      margin: const EdgeInsets.all(12), // Add margin around the card
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              news.Title,
              style: const TextStyle(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.save),
                  onPressed: onSave,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
