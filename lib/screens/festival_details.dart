import 'package:flutter/material.dart';
import 'package:geo_lore/main_layout.dart';

class FestivalDetails extends StatelessWidget {
  final String title;
  final String imagePath;
  
  const FestivalDetails({
    super.key, 
    required this.title,
    required this.imagePath,
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
    //const orange = Color(0xFFFF9644);

    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),

              // Header with flags and icons (no search bar)
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Flags image (positioned absolutely but we'll use a container)
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: 0,
                            top: -20,
                            child: Image.asset(
                              'assets/string_flags.png',
                              width: 230,
                              height: 130,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Profile icon
                  const Icon(Icons.person, size: 30, color: Color(0xFF562F00)),
                  const SizedBox(width: 12),
                  // Notification icon with badge
                  Stack(
                    children: [
                      const Icon(
                        Icons.notifications,
                        size: 30,
                        color: Color(0xFF562F00),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            '5',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Header with dynamic title
              Center(
                child: Text(
                  title.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF562F00),
                  ),
                ),
              ),

              const SizedBox(height: 13),

              Expanded(
                child: Column(
                  children: [
                    // CARD with the selected image
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: const Color(0xFF562F00),
                            width: 2.5,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(height: 10),

                              // DYNAMIC IMAGE from the selected tradition
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      91,
                                      20,
                                      20,
                                    ),
                                    borderRadius: BorderRadius.circular(18),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(
                                          255,
                                          18,
                                          4,
                                          4,
                                        ).withOpacity(0.2),
                                        blurRadius: 8,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      imagePath,
                                      height: 200,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 15),

                              // TEXT
                              const Text(
                                "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Illo dolorem quos ipsa. Consequatur odio ullam maxime aliquam atque, quaerat, ducimus, expedita dolores a neque necessitatibus reprehenderit! Officia, repellat nihil cum corporis delectus minus nostrum dolorum optio sunt odit quas a modi velit ex blanditiis libero atque, cumque? Nihil eius eaque asperiores ipsam aperiam nam sequi nihil perferendis laborum quod distinctio. Odio quod, deserunt aliquid totam nulla molestias repudiandae eaque voluptas? Perspiciatis unde quisquam repellat alias minima! Laboriosam magni, fugiat quisquam, non iure cumque obcaecati asperiores cupiditate excepturi distinctio alias numquam similique ullam, tempora minus vitae ea pariatur libero possimus porro soluta.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // BACK BUTTON
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 140,
                          height: 45,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            label: const Text(
                              "Back",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFF9644),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      
      // Bottom Navigation Bar (same as TraditionsPage)
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