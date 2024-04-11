import 'package:flutter/material.dart';
import 'package:newz_plan/models/saved.dart';
import 'package:newz_plan/models/world_news.dart';
import 'package:newz_plan/world_news_card.dart'; // Import the SavedScreen

class WorldScreen extends StatefulWidget {
  const WorldScreen({Key? key}) : super(key: key);

  @override
  State<WorldScreen> createState() => _WorldScreen();
}

class _WorldScreen extends State<WorldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sports"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: World.length,
              itemBuilder: (context, index) {
                final currentNews = World[index];
                return WorldNewsCard(
                  news: currentNews,
                  onSave: () {
                    setState(() {
                      savedNews1.add(currentNews);
                    });

                    // For example, you can add the current news to a list of saved articles
                    // Show success message using SnackBar
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('News article saved successfully'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
