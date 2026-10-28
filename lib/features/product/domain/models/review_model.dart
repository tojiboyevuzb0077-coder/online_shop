class Review {
  final String id;
  final String userName;
  final String userAvatarUrl;
  final double rating;
  final String comment;
  final String date;

  Review({
    required this.id,
    required this.userName,
    required this.userAvatarUrl,
    required this.rating,
    required this.comment,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'userName': userName,
        'userAvatarUrl': userAvatarUrl,
        'rating': rating,
        'comment': comment,
        'date': date,
      };

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json['id'] ?? '',
        userName: json['userName'] ?? '',
        userAvatarUrl: json['userAvatarUrl'] ?? '',
        rating: (json['rating'] ?? 5.0).toDouble(),
        comment: json['comment'] ?? '',
        date: json['date'] ?? '',
      );
}
