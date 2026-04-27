import 'package:flutter/material.dart';

class ReviewItem extends StatelessWidget {
  final String name;
  final String date;
  final String review;

  const ReviewItem({
    super.key,
    required this.name,
    required this.date,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // Avatar
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Color(0xFF562F00),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 10),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)  ),
                  Row(
                    children: List.generate(
                      3,
                      (index) => const Icon(Icons.star,
                          color: Colors.orange, size: 14),
                    ),
                  ),
                ],
              ),
            ),

            Text(date, style: const TextStyle(fontSize: 14)),
          ],
        ),

        const SizedBox(height: 8),

        Text(
          review,
          style: const TextStyle(fontSize: 16),
        ),

        const SizedBox(height: 8),

        Row(
          children: [
            const Text("10 people found this helpful"),
            const SizedBox(width: 8),
            _smallButton("Yes"),
            const SizedBox(width: 5),
            _smallButton("No"),
          ],
        ),
      ],
    );
  }

  Widget _smallButton(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(text, style: const TextStyle(fontSize: 12)),
    );
  }
}