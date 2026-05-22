import 'package:flutter/material.dart';
import 'package:geo_lore/main_layout.dart';
import 'fashion_detail_page.dart';

class FashionPage extends StatelessWidget {
  const FashionPage({super.key});

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

              // ================= HEADER =================
              SizedBox(
                height: 78,
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
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 46,
                            margin: const EdgeInsets.only(top: 14),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: const Color(0xFFC35257),
                                width: 1.2,
                              ),
                            ),
                            child: Row(
                              children: const [
                                Icon(Icons.search,
                                    color: brown, size: 22),
                                SizedBox(width: 8),
                                Text(
                                  "Search",
                                  style: TextStyle(
                                    color: brown,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 14),
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
              const Center(
                child: Text(
                  "FASHION",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: brown,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // ================= FASHION LIST =================
              Expanded(
                child: ListView(
                  children: [
                    FashionItem(
                      title: "Iru & Buba",
                      imagePath: "assets/tradition_4.jpg",
                      description: "Lorem ipsum dolor, sit amet consecte adipiscing elit. Illo dolorem quos ipsa. Consequatur odio ullam maxime",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => FashionDetailsPage(
                              title: "Iru & Buba",
                              imagePath: "assets/tradition_5.jpg",
                              description: "Lorem ipsum dolor, sit amet consecte adipiscing elit. Illo dolorem quos ipsa. Consequatur odio ullam maxime aliquam atque, quaerat, ducimus, expedita dolores a neque necessitatibus reprehenderit! Officia, repellat nihil cum corporis delectus minus nostrum dolorum optio sunt odit quas a modi velit ex blanditiis libero atque.",
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 18),
                    FashionItem(
                      title: "Agbada",
                      imagePath: "assets/tradition_6.jpg",
                      description: "Lorem ipsum dolor, sit amet consecte adipiscing elit. Illo dolorem quos ipsa. Consequatur odio ullam maxime",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => FashionDetailsPage(
                              title: "Agbada",
                              imagePath: "assets/tradition_4.jpg",
                              description: "Lorem ipsum dolor, sit amet consecte adipiscing elit. Illo dolorem quos ipsa. Consequatur odio ullam maxime aliquam atque, quaerat, ducimus, expedita dolores a neque necessitatibus reprehenderit! Officia, repellat nihil cum corporis delectus minus nostrum dolorum optio sunt odit quas a modi velit ex blanditiis libero atque.",
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 18),
                    FashionItem(
                      title: "Kente",
                      imagePath: "assets/tradition_5.jpg",
                      description: "Lorem ipsum dolor, sit amet consecte adipiscing elit. Illo dolorem quos ipsa. Consequatur odio ullam maxime",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => FashionDetailsPage(
                              title: "Kente",
                              imagePath: "assets/tradition_6.jpg",
                              description: "Lorem ipsum dolor, sit amet consecte adipiscing elit. Illo dolorem quos ipsa. Consequatur odio ullam maxime aliquam atque, quaerat, ducimus, expedita dolores a neque necessitatibus reprehenderit! Officia, repellat nihil cum corporis delectus minus nostrum dolorum optio sunt odit quas a modi velit ex blanditiis libero atque.",
                            ),
                          ),
                        );
                      },
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

class FashionItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;
  final VoidCallback onTap;

  const FashionItem({
    super.key,
    required this.title,
    required this.imagePath,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const brown = Color(0xFF562F00);
    const orange = Color(0xFFFF9644);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: brown, width: 1.5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 14),
          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: brown,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 13,
                    color: brown.withOpacity(0.8),
                    height: 1.3,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 80,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: onTap,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "View",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
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
    );
  }
}