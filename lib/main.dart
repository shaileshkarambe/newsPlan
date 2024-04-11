import 'package:flutter/material.dart';
import 'package:newz_plan/plan.dart';

void main() {
  runApp(const MaterialApp(
    home: NewzPlan(),
  ));
}

class NewzPlan extends StatelessWidget {
  const NewzPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  "https://th.bing.com/th/id/R.f82d6b04afd4a86fa9e9db014b541dd9?rik=gyIWvzjjStyWQw&riu=http%3a%2f%2fwww.harfordcountyhealth.com%2fwp-content%2fuploads%2f2015%2f01%2fNewspaper.jpg&ehk=GTwtWMzRxzrZQc1M5Cf2AIzYszfROQxvt%2bete59TUx4%3d&risl=1&pid=ImgRaw&r=0"),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "NewsPulse",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("choose one of our subcriptions"),
              const SizedBox(
                height: 5,
              ),
              const Text("and stay informed wherever you are"),
              const SizedBox(
                height: 150,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const PlanScreen()));
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(1000, 5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  "Subscribe",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
