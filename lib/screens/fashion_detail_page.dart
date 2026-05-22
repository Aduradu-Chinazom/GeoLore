import 'package:flutter/material.dart';
import 'package:geo_lore/main_layout.dart';

class FashionDetailsPage extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;

  const FashionDetailsPage({
    super.key,
    required this.title,
    required this.imagePath,
    required this.description,
  });

  void _navigateToMain(BuildContext context, int index) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => MainLayout(initialIndex: index),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    const brown = Color(0xFF562F00);
    const orange = Color(0xFFFF9644);

    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 12),

              // ================= HEADER WITH FLAGS ONLY =================
              SizedBox(
                height: 60,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: -10,
                      top: -28,
                      child: Image.asset(
                        'assets/string_flags.png',
                        width: 230,
                        height: 130,
                        fit: BoxFit.contain,
                      ),
                    ),
                    // Profile and notification icons on the right
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Icon(Icons.person,
                              color: brown, size: 28),
                        ),
                        const SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Stack(
                            children: [
                              const Icon(
                                Icons.notifications_none,
                                color: brown,
                                size: 28,
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "5",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // TITLE
              Center(
                child: Text(
                  title.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: brown,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // ================= DETAILS CARD =================
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF3E8),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: brown, width: 1.5),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // Image and short description row
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                imagePath,
                                width: 130,
                                height: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                description.substring(0, description.length ~/ 2),
                                style: TextStyle(
                                  fontSize: 13,
                                  color: brown,
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        // Full description
                        Text(
                          description,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                            color: brown.withOpacity(0.9),
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Additional details
                        // Container(
                        //   padding: const EdgeInsets.all(12),
                        //   decoration: BoxDecoration(
                        //     color: orange.withOpacity(0.1),
                        //     borderRadius: BorderRadius.circular(12),
                        //   ),
                        //   child: const Row(
                        //     children: [
                        //       Icon(Icons.access_time, color: brown, size: 20),
                        //       SizedBox(width: 8),
                        //       Text(
                        //         "Estimated reading time: 5 mins",
                        //         style: TextStyle(
                        //           fontSize: 12,
                        //           color: brown,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // BACK BUTTON
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 120,
                  height: 45,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back,
                        color: Colors.white, size: 18),
                    label: const Text(
                      "Back",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 14),
            ],
          ),
        ),
      ),

      // ================= BOTTOM NAV WITH FUNCTIONALITY =================
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(color: brown),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.chat, color: Colors.white, size: 28),
              onPressed: () => _navigateToMain(context, 0),
            ),
            IconButton(
              icon: const Icon(Icons.school, color: Colors.white, size: 28),
              onPressed: () => _navigateToMain(context, 1),
            ),
            IconButton(
              icon: const Icon(Icons.home, color: Colors.white, size: 28),
              onPressed: () => _navigateToMain(context, 2),
            ),
            IconButton(
              icon: const Icon(Icons.person, color: Colors.white, size: 28),
              onPressed: () => _navigateToMain(context, 3),
            ),
            IconButton(
              icon: const Icon(Icons.people, color: Colors.white, size: 28),
              onPressed: () => _navigateToMain(context, 4),
            ),
          ],
        ),
      ),
    );
  }
}