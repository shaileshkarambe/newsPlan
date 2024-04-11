class NewsList {
  const NewsList(
      {required this.ImageURL, required this.Title, required this.discription});

  final String ImageURL;
  final String Title;
  final String discription;
}

final List<NewsList> news = [
  const NewsList(
      ImageURL:
          "https://www.hindustantimes.com/ht-img/img/2024/04/11/550x309/ANI-20240410292-0_1712796474129_1712796500957.jpg",
      Title:
          "Narendra Modi interview with Newsweek: He said that peaceful relations between India and China are important for the entire world.",
      discription:
          "The name of Lord Shri Ram is imprinted on India's national consciousness, Prime Minister Narendra Modi told an American magazine in an interview. He said Lord Ram's life has set the contours of thoughts and values in the country's "),
  const NewsList(
      ImageURL:
          "https://www.hindustantimes.com/ht-img/img/2024/04/06/550x309/The-Delhi-police-filed-an-FIR-in-the-case-on-April_1712427754993_1712429452895.jpg",
      Title:
          "14-year-old boy brutally assaulted by classmates with a wooden stick in Delhi school premises. Main accused apprehended, sparking protests.",
      discription:
          "A 14-year-old boy is undergoing treatment at a private hospital in Delhi after he was allegedly beaten up at the school premises by his classmates, who in a bid to assault him also brutalised him with a wooden stick, police officials said on Saturday."),
  const NewsList(
      ImageURL:
          "https://www.hindustantimes.com/ht-img/img/2024/04/11/550x309/Delhi-chief-minister-Arvind-Kejriwal--PTI-_1712807193038_1712807211045.jpg",
      Title:
          "Delhi's Directorate of Vigilance sacks Arvind Kejriwal's secretary Bibhav Kumar",
      discription:
          "New Delhi: Delhi's Directorate of Vigilance has terminated the services of Bibhav Kumar, the personal secretary of jailed chief minister Arvind Kejriwal. Special secretary, vigilance, YVVJ Rajshekhar passed the order directing his removal, citing a 2007 case against him."),
  const NewsList(
      ImageURL:
          "https://www.hindustantimes.com/ht-img/img/2024/04/10/550x309/Mumbai--India---April-9--2024--MNS-chief-Raj-Thack_1712735946292_1712735961598.jpg",
      Title:
          "Sanjay Raut questions Raj Thackeray's BJP tilt: ‘Which file opened?’",
      discription:
          "Mumbai: Shiv Sena (UBT) leader Sanjay Raut on Wednesday questioned the motive behind MNS chief Raj Thackeray extending "),
];
