import 'package:flutter/material.dart';
import 'package:newz_plan/business_screen.dart';
import 'package:newz_plan/sportsscreen.dart';
import 'package:newz_plan/world_news_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueGrey[900], // Set background color
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey[800], // Set header background color
              ),
              child: const Text(
                'News Categories',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            _buildDrawerItem(context, 'Sports'),
            _buildDrawerItem(context, 'Business'),
            _buildDrawerItem(context, 'World News'),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, String category) {
    return ListTile(
      hoverColor: Colors.grey,
      title: Text(
        category,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      onTap: () {
        // Navigate to corresponding screen based on the selected category
        switch (category) {
          case 'Sports':
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => const SportsScreen()));
            break;
          case 'Business':
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => const BusinessScreen()));

            break;
          case 'World News':
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => const WorldScreen()));
            break;
          default:
            break;
        }
      },
    );
  }
}
