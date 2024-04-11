class SportsNews {
  const SportsNews(
      {required this.ImageURL, required this.Title, required this.discription});

  final String ImageURL;
  final String Title;
  final String discription;
}

final List<SportsNews> news = [
  const SportsNews(
      ImageURL: "https://images.indianexpress.com/2024/04/samson.jpg?w=316",
      Title:
          "Sanju Samson’s batting transformation: Spin domination and six-hitting spree",
      discription:
          "Sanju Samson’s batting transformation: Spin domination and six-hitting spree"),
  const SportsNews(
      ImageURL:
          "https://images.indianexpress.com/2024/04/rohit-virat.jpg?resize=450,253",
      Title:
          "MI vs RCB Playing 11, IPL 2024: Playing XI prediction, head-to-head stats, key players, pitch report and weather update",
      discription:
          "MI vs RCB IPL 2024 Playing 11: A look at the Playing XI prediction, head-to-head stats, venue records, pitch and weather updates of the MI vs RCB clash at the at the Wankhede Stadium in Mumbai on Thursday"),
  const SportsNews(
      ImageURL:
          "https://images.indianexpress.com/2024/04/GUKESH-VS-HIKARU-NAKAMURA.jpg?resize=450,253",
      Title:
          "Candidates Chess 2024: Gukesh tops standings; Vidit Gujrathi, Praggnanandhaa win | Round 6 results, standings and pairings",
      discription:
          "Candidates Chess 2024: Gukesh is on top of the standing in the open section at the Candidates chess tournament after six rounds, sharing the top spot with Ian Nepomniachtchi"),
  const SportsNews(
      ImageURL:
          "https://images.indianexpress.com/2024/04/RR-GT-1.jpg?resize=450,253",
      Title:
          "RR vs GT: Rashid Khan’s strange but effective ways with the bat, Riyan Parag’s breakthrough with the bat and other key moments",
      discription:
          "Emotional Rollercoaster: Gujarat Titans defeat Rajasthan Royals by 3 wickets "),
];
