import 'package:flutter/material.dart';
import 'package:newz_plan/business_news_card.dart';
import 'package:newz_plan/models/sports_news.dart'; // Import your sports news model
import 'package:newz_plan/models/business_news.dart'; // Import your business news model
import 'package:newz_plan/models/world_news.dart'; // Import your world news model
import 'package:newz_plan/sportsNewsCard.dart'; // Import your sports news card widget
import 'package:newz_plan/world_news_card.dart'; // Import your world news card widget

class SavedScreen extends StatelessWidget {
  final List<SportsNews> savedSportsNews;
  final List<BusinessNews> savedBusinessNews;
  final List<WorldNews> savedWorldNews;

  const SavedScreen({
    Key? key,
    required this.savedSportsNews,
    required this.savedBusinessNews,
    required this.savedWorldNews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> savedNewsWidgets = [];

    // Add saved sports news cards
    savedNewsWidgets.addAll(savedSportsNews.map((news) => SportsNewsCard(
          news: news,
          onSave: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('News article saved successfully'),
                duration: Duration(seconds: 2),
              ),
            );
          },
        )));

    // Add saved business news cards
    savedNewsWidgets.addAll(savedBusinessNews.map((news) => BusinessNewsCard(
          news: news,
          onSave: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('News article saved successfully'),
                duration: Duration(seconds: 2),
              ),
            );
          },
        )));

    // Add saved world news cards
    savedNewsWidgets.addAll(savedWorldNews.map((news) => WorldNewsCard(
          news: news,
          onSave: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('News article saved successfully'),
                duration: Duration(seconds: 2),
              ),
            );
          },
        )));

    return Scaffold(
      appBar: AppBar(
        title: Text("Saved News"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: savedNewsWidgets.isEmpty
          ? Center(
              child: Text(
                'No saved news yet',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              itemCount: savedNewsWidgets.length,
              itemBuilder: (context, index) => savedNewsWidgets[index],
            ),
    );
  }
}
