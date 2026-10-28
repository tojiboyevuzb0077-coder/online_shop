import 'package:flutter/material.dart';
import '../../domain/models/review_model.dart';
import '../../../../core/theme/app_theme.dart';

class ReviewsScreen extends StatelessWidget {
  final List<Review> reviews;

  const ReviewsScreen({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    final displayReviews = reviews.isEmpty
        ? [
            Review(id: '1', userName: 'Jessie Phelps', userAvatarUrl: 'https://i.pravatar.cc/150?img=1', rating: 5, comment: 'Great chair! The size and color blends well with our mid century home. Sturdy and comfortable. Very happy with my purchase!', date: 'Reviewed left on Jun 05, 2019'),
            Review(id: '2', userName: 'Larry May', userAvatarUrl: 'https://i.pravatar.cc/150?img=2', rating: 5, comment: 'Love new chairs! Very happy with my new chair. This is a great addition to my office.', date: 'Reviewed left on Dec 14, 2019'),
            Review(id: '3', userName: 'Bradley Parks', userAvatarUrl: 'https://i.pravatar.cc/150?img=3', rating: 5, comment: 'Place to relax in bedroom! Well worth the long wait for delivery. Nice comfy spot to decompress at the end of the day and read.', date: 'Reviewed left on Dec 11, 2019'),
            Review(id: '4', userName: 'Jackson Rogers', userAvatarUrl: 'https://i.pravatar.cc/150?img=4', rating: 5, comment: 'A bit of a wait, but worth it. Goes great with our decor. Professional delivery, too. Thanks.', date: 'Reviewed left on Nov 12, 2019'),
          ]
        : reviews;

    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews(${displayReviews.length})'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: displayReviews.length,
        separatorBuilder: (context, index) => const Divider(height: 24, color: Color(0xFFE5E5EA)),
        itemBuilder: (context, index) {
          final review = displayReviews[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(review.userAvatarUrl),
                  radius: 20,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            review.userName,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: AppTheme.textPrimary),
                          ),
                          Text(
                            review.date,
                            style: const TextStyle(color: AppTheme.textSecondary, fontSize: 11),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: List.generate(
                          5,
                          (starIndex) => const Icon(
                            Icons.star,
                            color: Color(0xFFFFB61A),
                            size: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        review.comment,
                        style: const TextStyle(
                          color: AppTheme.textSecondary,
                          fontSize: 13,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
