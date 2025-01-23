class Meal {
  final String title;
  final String description;
  final String imageUrl;
  final double rating;
  final List<Review> reviews;
  final double price;

  Meal({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.reviews,
    required this.price,
  });
}

class Review {
  final String userName;
  final double rating;
  final String comment;

  Review({
    required this.userName,
    required this.rating,
    required this.comment,
  });
} 