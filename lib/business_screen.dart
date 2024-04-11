import 'package:flutter/material.dart';
import 'package:newz_plan/business_news_card.dart';
import 'package:newz_plan/models/business_news.dart';
import 'package:newz_plan/models/saved.dart';

class BusinessScreen extends StatefulWidget {
  const BusinessScreen({super.key});

  @override
  State<BusinessScreen> createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Business"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: businessNews.length,
                itemBuilder: (context, index) {
                  final currentNews =
                      businessNews[index]; // Get the current news item
                  return BusinessNewsCard(
                    onSave: () {
                      setState(() {
                        savedNews2.add(currentNews);
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
                    news: currentNews, // Pass the current news item to NewsCard
                  );
                },
              ),
            ),
          ],
        ));
  }
}
