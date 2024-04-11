import 'package:flutter/material.dart';
import 'package:newz_plan/models/saved.dart';
import 'package:newz_plan/models/sports_news.dart';
import 'package:newz_plan/sportsNewsCard.dart'; // Import the SavedScreen

class SportsScreen extends StatefulWidget {
  const SportsScreen({Key? key}) : super(key: key);

  @override
  State<SportsScreen> createState() => _SportsScreenState();
}

class _SportsScreenState extends State<SportsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sports"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: news.length,
              itemBuilder: (context, index) {
                final currentNews = news[index];
                return SportsNewsCard(
                  news: currentNews,
                  onSave: () {
                    setState(() {
                      savedNews.add(currentNews);
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
