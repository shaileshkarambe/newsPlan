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
];
