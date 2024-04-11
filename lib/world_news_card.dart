import 'package:flutter/material.dart';
import 'package:newz_plan/models/world_news.dart';

class WorldNewsCard extends StatelessWidget {
  final WorldNews news;
  final VoidCallback onSave;

  const WorldNewsCard({
    Key? key,
    required this.news,
    required this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(12),
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
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              news.ImageURL,
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
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
                  icon: const Icon(Icons.save),
                  onPressed: onSave,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
