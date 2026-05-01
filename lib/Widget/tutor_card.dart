import 'package:flutter/material.dart';

class TutorCard extends StatelessWidget {
  final String name;
  final String country;
  final String price;
  final int stars;
  final Color borderColor;

  const TutorCard({
    super.key,
    required this.name,
    required this.country,
    required this.price,
    required this.stars,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor, width: 2.5),
      ),
      child: Row(
        children: [
          // LEFT TEXT
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Meet", style: TextStyle(color: Colors.black54)),

                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF562F00),
                  ),
                ),

                Text("Based in $country"),

                const SizedBox(height: 6),

                Row(
                  children: List.generate(
                    stars,
                    (index) => const Icon(Icons.star,
                        color: Colors.orange, size: 18),
                  ),
                ),
              ],
            ),
          ),

          // PRICE BOX
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFFF9644),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              price,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}