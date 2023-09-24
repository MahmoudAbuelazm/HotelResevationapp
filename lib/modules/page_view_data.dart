class Data {
  final String title;
  final String description;
  final String imageUrl;

  Data(
      {required this.title,
        required this.description,
        required this.imageUrl});
}

final List<Data> myData = [
  Data(
      title: "Booking Hotels Anywhere Is Easier",
      description: "Urna amet, suspendisse Ullamcorper ac elit diam facilisis cursus vestibulum.",
      imageUrl: "images/Rectangle.png"),
  Data(
    title: "plan Your Vacation With Ease",
    description: "Urna amet, suspendisse Ullamcorper ac elit diam facilisis cursus vestibulum.",
    imageUrl: "images/Rectangle3.png",
  ),
  Data(
      title: "Thousands Of Hotels To Be Found",
      description: 'Urna amet, suspendisse Ullamcorper ac elit diam facilisis cursus vestibulum.',
      imageUrl: "images/Rectangle2.png")
];