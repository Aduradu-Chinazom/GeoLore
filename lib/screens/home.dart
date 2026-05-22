import 'package:flutter/material.dart';
import 'package:geo_lore/main_layout.dart';

class HomePage extends StatelessWidget {
  final int curentIndex;
  const HomePage({super.key, this.curentIndex = 2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),

              // Search bar
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 44,
                                    margin: const EdgeInsets.only(left: 12),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: const Color(0xFFC35257),
                                      ),
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.search,
                                          color: Color(0xFF562F00),
                                        ),
                                        SizedBox(width: 8),
                                        Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Search",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 18),
                  const Icon(Icons.person, size: 30, color: Color(0xFF562F00)),
                  const SizedBox(width: 12),
                  const Icon(
                    Icons.notifications,
                    size: 30,
                    color: Color(0xFF562F00),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Header
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "There's a whole world to discover",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF562F00),
                      ),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Image.asset('assets/logo.png', width: 100, height: 160),
                ],
              ),
              const SizedBox(height: 8),

              // ORANGE BACKGROUND SECTION
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE7D3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListView(
                    children: [
                      _buildCard(
                        title: 'Learn About Your Culture',
                        image: const AssetImage('assets/culture.png'),
                        borderColor: const Color(0xFFFF9644),
                        onTap: () {
                          // Navigate within the MainLayout
                          // We need to access the parent's state
                          final MainLayoutState? mainLayoutState = 
                              context.findAncestorStateOfType<MainLayoutState>();
                          if (mainLayoutState != null) {
                            mainLayoutState.setSelectedIndex(3); // Go to Culture page
                          }
                        },
                      ),
                      const SizedBox(height: 16),
                      _buildCard(
                        title: 'AI Tutor',
                        image: const AssetImage('assets/ai_tutor.png'),
                        borderColor: const Color(0xFF562F00),
                        onTap: () {
                          final MainLayoutState? mainLayoutState = 
                              context.findAncestorStateOfType<MainLayoutState>();
                          if (mainLayoutState != null) {
                            mainLayoutState.setSelectedIndex(0); // Go to Chat page
                          }
                        },
                      ),
                      const SizedBox(height: 16),
                      _buildCard(
                        title: 'Community',
                        image: const AssetImage('assets/community.png'),
                        borderColor: const Color(0xFFFF9644),
                        onTap: () {
                          final MainLayoutState? mainLayoutState = 
                              context.findAncestorStateOfType<MainLayoutState>();
                          if (mainLayoutState != null) {
                            mainLayoutState.setSelectedIndex(4); // Go to Community page
                          }
                        },
                      ),
                      const SizedBox(height: 16),
                      _buildCard(
                        title: 'Events',
                        image: const AssetImage('assets/event.png'),
                        borderColor: const Color(0xFF562F00),
                        onTap: () {
                          // Add events page or handle accordingly
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required ImageProvider image,
    required Color borderColor,
    required VoidCallback onTap,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor, width: 3),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF562F00),
                  ),
                ),
                const SizedBox(height: 28),
                ElevatedButton(
                  onPressed: onTap,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF9644),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Discover',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image(image: image, width: 160, height: 160),
        ],
      ),
    );
  }
}