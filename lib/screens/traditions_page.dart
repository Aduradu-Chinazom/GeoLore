import 'package:flutter/material.dart';
import 'package:geo_lore/main_layout.dart';
import 'tradition.dart';

class TraditionsPage extends StatelessWidget {
  const TraditionsPage({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              const SizedBox(height: 12),

              // ================= TOP AREA =================
              SizedBox(
                height: 80,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // FLAGS
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
                        // SEARCH BAR
                        Expanded(
                          child: Container(
                            height: 46,
                            margin: const EdgeInsets.only(top: 14),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
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
                                Icon(
                                  Icons.search,
                                  color: brown,
                                  size: 22,
                                ),
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
                        // PROFILE
                        const Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Icon(
                            Icons.person,
                            size: 28,
                            color: brown,
                          ),
                        ),
                        const SizedBox(width: 10),
                        // NOTIFICATION
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Stack(
                            children: [
                              const Icon(
                                Icons.notifications_none,
                                size: 28,
                                color: brown,
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

              const SizedBox(height: 18),

              // ================= TITLE =================
              const Text(
                "TRADITIONS",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  color: brown,
                  letterSpacing: 0.5,
                ),
              ),

              const SizedBox(height: 24),

              // ================= GRID =================
              Expanded(
                child: GridView(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                    childAspectRatio: 1.18,
                  ),
                  children: [
                    TraditionCard(
                      title: "Kolanut Presentation",
                      image: "assets/tradition_1.webp",
                      isWide: true,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Tradition(
                              title: "Kolanut Presentation",
                              imagePath: "assets/tradition_1.webp",
                            ),
                          ),
                        );
                      },
                    ),
                    TraditionCard(
                      title: "Title Taking",
                      image: "assets/tradition_2.webp",
                      isWide: false,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Tradition(
                              title: "Title Taking",
                              imagePath: "assets/tradition_2.webp",
                            ),
                          ),
                        );
                      },
                    ),
                    TraditionCard(
                      title: "New Yam Festival",
                      image: "assets/tradition_3.jpg",
                      isWide: false,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Tradition(
                              title: "New Yam Festival",
                              imagePath: "assets/tradition_3.jpg",
                            ),
                          ),
                        );
                      },
                    ),
                    TraditionCard(
                      title: "Age Grade System",
                      image: "assets/tradition_4.jpg",
                      isWide: true,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Tradition(
                              title: "Age Grade System",
                              imagePath: "assets/tradition_4.jpg",
                            ),
                          ),
                        );
                      },
                    ),
                    TraditionCard(
                      title: "Igbo Nkwu",
                      image: "assets/tradition_5.jpg",
                      isWide: true,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Tradition(
                              title: "Igbo Nkwu",
                              imagePath: "assets/tradition_5.jpg",
                            ),
                          ),
                        );
                      },
                    ),
                    TraditionCard(
                      title: "Mmanwu",
                      image: "assets/tradition_6.jpg",
                      isWide: false,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Tradition(
                              title: "Mmanwu",
                              imagePath: "assets/tradition_6.jpg",
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // ================= BUTTON =================
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 150,
                  height: 46,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: orange,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "View More",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 18),
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

class TraditionCard extends StatelessWidget {
  final String title;
  final String image;
  final bool isWide;
  final VoidCallback onTap;

  const TraditionCard({
    super.key,
    required this.title,
    required this.image,
    required this.isWide,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const brown = Color(0xFF562F00);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: brown,
            width: 1.5,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
                width: isWide ? double.infinity : null,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.55),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      height: 1.1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}