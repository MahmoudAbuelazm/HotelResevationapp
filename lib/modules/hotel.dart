class Hotel {
  final String id;
  final String title;
  final String imgUrl;
  final String price;
  final String rating;
  final String numRating;
  final List<String> category;

  Hotel(
      {required this.id,
      required this.title,
      required this.imgUrl,
      required this.price,
      required this.rating,
      required this.numRating,
        required this.category
      });
}
