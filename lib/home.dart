import 'package:flutter/material.dart';
import 'package:newz_plan/models/list_of_news.dart'; // Import your list of news
import 'package:newz_plan/models/news_card.dart'; // Import your NewsCard widget

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: news.length,
            itemBuilder: (context, index) {
              final currentNews = news[index]; // Get the current news item
              return NewsCard(
                news: currentNews, // Pass the current news item to NewsCard
              );
            },
          ),
        ),
      ],
    );
  }
}
