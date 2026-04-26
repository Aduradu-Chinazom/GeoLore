import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

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

              const SizedBox(height: 13),

              // Header
              Center(
                child: Text(
                  "HISTORY",
                  style: TextStyle(
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
                    // CARD
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Color(0xFF562F00), width: 2.5),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(height: 10),

                              // IMAGE
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 91, 20, 20), 
                                    borderRadius: BorderRadius.circular(18),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(255, 18, 4, 4).withOpacity(0.2),
                                        blurRadius: 8,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/tradition_5.jpg',
                                      height: 140,
                                      width: 200,
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
                                style: TextStyle(fontSize: 16, color: Colors.black87),
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
                          icon: const Icon(Icons.arrow_back, color: Colors.white),
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
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(color: Color(0xFF562F00)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.chat, color: Colors.orange),
            Icon(Icons.school, color: Colors.orange),
            Icon(Icons.home, color: Colors.orange),
            Icon(Icons.person, color: Colors.orange),
            Icon(Icons.people, color: Colors.orange),
          ],
        ),
      ),
    );
  }
}
