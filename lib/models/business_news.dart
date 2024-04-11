class BusinessNews {
  const BusinessNews(
      {required this.ImageURL, required this.Title, required this.discription});

  final String ImageURL;
  final String Title;
  final String discription;
}

final List<BusinessNews> businessNews = [
  const BusinessNews(
      ImageURL:
          "https://i0.wp.com/sanantonioreport.org/wp-content/uploads/2024/04/courtesy-portsa-boeing-center-.jpg?resize=400%2C300&ssl=1",
      Title:
          "National security firm expands cyber presence with new office at Port San Antonio",
      discription:
          "Peraton is opening an office focused on collaboration in Tech Port’s Capital Factory at Port San Antonio."),
  const BusinessNews(
      ImageURL:
          "https://i0.wp.com/sanantonioreport.org/wp-content/uploads/2023/09/brenda-bazan-airport-6.jpg?resize=600%2C450&ssl=1",
      Title:
          "San Antonio airport selects vendor as it looks to outsource parking lots",
      discription:
          "San Antonio airport officials say outsourcing parking to a vendor will reduce costs and increase profits — all without raising prices"),
  const BusinessNews(
      ImageURL:
          "https://i0.wp.com/sanantonioreport.org/wp-content/uploads/2024/03/Brenda-Bazan-graham-weston.jpg?resize=600%2C450&ssl=1",
      Title:
          "New fund will further Geekdom’s entrepreneurship ecosystem to South Texas",
      discription:
          "The new fund will support organizations across South Texas to expand their own entrepreneurial ecosystems, creating jobs and wealth."),
  const BusinessNews(
      ImageURL:
          "https://i0.wp.com/sanantonioreport.org/wp-content/uploads/2017/08/ScottBall_Eclipse_San_Antonio_Scobee_Planetarium_SAC_San_Antonio_College_8-21-2017-9.jpg?resize=800%2C600&ssl=1",
      Title:
          "The eclipse economy: Minutes of darkness and up to 1.4 billion economic impact",
      discription:
          "Many Hill Country communities started planning for the big business accompanying the April 8 total solar eclipse years in advance. "),
];
