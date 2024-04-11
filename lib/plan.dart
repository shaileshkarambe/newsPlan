import 'dart:io';

import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({Key? key}) : super(key: key);

  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  String? selectedPlan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "NewsPulse",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Choose your subscription",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: planList.length,
                itemBuilder: (context, index) {
                  final plan = planList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                        leading: Radio<String>(
                          value: plan.type,
                          groupValue: selectedPlan,
                          onChanged: (value) {
                            setState(() {
                              selectedPlan = value;
                            });
                          },
                        ),
                        title: Text(
                          plan.type,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          plan.note,
                          style: TextStyle(fontSize: 16),
                        ),
                        trailing: Text(
                          '\$${plan.prize}',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          setState(() {
                            selectedPlan = plan.type;
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(500, 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  "Process",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}

class NewzPlan {
  final String type;
  final String note;
  final String prize;

  NewzPlan({
    required this.type,
    required this.note,
    required this.prize,
  });
}

final List<NewzPlan> planList = [
  NewzPlan(type: "Monthly", note: "One Month Plan", prize: "450"),
  NewzPlan(type: "Annual", note: "Annual Plan", prize: "45000"),
  NewzPlan(type: "Two Years", note: "Two Years Plan", prize: "450000"),
  // Add more subscription plans as needed
];
