import 'package:flutter/material.dart';

class CulturePage extends StatelessWidget {
  const CulturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFDF1),
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
                                        color: Color(0xFFC35257),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.search,
                                          color: Color(0xFF562F00),
                                        ),
                                        const SizedBox(width: 8),
                                        const Expanded(
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

              const SizedBox(height: 10),

              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // centers horizontally
                children: [
                  const Text(
                    "IGBO",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Image.asset('assets/flag.png', width: 100, height: 140),
                ],
              ),

              const SizedBox(height: 10),


             Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color:  Color(0xFFFFFDF1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListView(
                    children: [
                      _buildCard(
                        title: 'History',
                        borderColor:  Color(0xFFFF9644),
                      ),
                      const SizedBox(height: 16),
                      _buildCard(
                        title: 'Language',
                        borderColor: Color(0xFF562F00),
                      ),
                      const SizedBox(height: 16),
                      _buildCard(
                        title: 'Food',
                        borderColor:  Color(0xFFFF9644),
                      ),
                      const SizedBox(height: 16),
                      _buildCard(
                        title: 'Cultures',
                        borderColor: Color(0xFF562F00),
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
    required Color borderColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor, width: 3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center( 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center, 
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF562F00),
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFF9644),
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
          ),
        ],
      ),
    );
  }
}