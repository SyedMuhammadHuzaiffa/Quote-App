class Quote {
  final String text;
  final String author;

  const Quote({
    required this.text,
    required this.author,
  });

  static List<Quote> quotes = [
    const Quote(
      text:
          "Fashion is not something that exists in dresses only. Fashion is in the sky, in the street, fashion has to do with ideas, the way we live, what is happening.",
      author: "Coco Chanel",
    ),
    const Quote(
      text:
          "Success is not final, failure is not fatal: it is the courage to continue that counts",
      author: "Winston Churchill",
    ),
    const Quote(
      text: "The only way to do great work is to love what you do.",
      author: "Steve Jobs",
    ),
    const Quote(
      text: "You can never be overdressed or overeducated",
      author: "- Oscar Wilde",
    ),
    const Quote(
      text: "Everybody has a plan until they get punched in the face",
      author: "Mike Tyson",
    ),
    const Quote(
      text: "I have not failed. I've just found 10,000 ways that won't work",
      author: "Thomas Edison",
    ),
    const Quote(
      text: "Don't let the fear of striking out hold you back",
      author: "Babe Ruth",
    ),
    const Quote(
      text: "Fashion is the armour to survive the reality of everyday life.",
      author: "Bill Cunningham",
    ),
    const Quote(
      text: "I am the greatest, I said that even before I knew I was.",
      author: "Muhammad Ali",
    ),
    const Quote(
      text:
          "I have a theory that movies operate on the level of dreams, where you dream yourself.",
      author: "Francis Ford Coppola",
    ),
  ];
}
