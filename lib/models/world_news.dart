class WorldNews {
  const WorldNews(
      {required this.ImageURL, required this.Title, required this.discription});

  final String ImageURL;
  final String Title;
  final String discription;
}

final List<WorldNews> World = [
  const WorldNews(
      ImageURL:
          "https://d3oj2y7irryo5z.cloudfront.net/wp-content/uploads/2022/12/IMG20221216093301-650x450.jpg",
      Title:
          "Here’s how Microsoft is working with journalists to create the newsrooms of the future with AI",
      discription:
          "Here’s how Microsoft is working with journalists to create the newsrooms of the future with AI"),
  const WorldNews(
      ImageURL:
          "https://d3oj2y7irryo5z.cloudfront.net/wp-content/uploads/2024/02/Untitled-design-26-650x450.png",
      Title: "The AI Revolution and what it means for local news",
      discription: "The AI Revolution and what it means for local news"),
  const WorldNews(
      ImageURL:
          "https://d3oj2y7irryo5z.cloudfront.net/wp-content/uploads/2024/03/Charlies-Column-9-650x450.png",
      Title: "Measuring this historic moment: Is it a 1968, Redux?",
      discription: "Measuring this historic moment: Is it a 1968, Redux?"),
  const WorldNews(
      ImageURL:
          "https://d3oj2y7irryo5z.cloudfront.net/wp-content/uploads/2024/04/Ximena-2-830x600.jpg",
      Title: "A lens on the meaning of People’s Park",
      discription: "A lens on the meaning of People’s Park"),
];
