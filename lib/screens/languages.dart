import 'package:flutter/material.dart';
import '../Widget/tutor_card.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 25),

              // SEARCH BAR
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


              const SizedBox(height: 30),

              // TITLE
              const Text(
                "LANGUAGE COURSES",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF562F00),
                ),
              ),

              const SizedBox(height: 20),

              // LIST
              Expanded(
                child: ListView(
                  children: const [
                    TutorCard(
                      name: "Amaka",
                      country: "Nigeria",
                      price: "\$30 PER/HR",
                      stars: 2,
                      borderColor: Colors.orange,
                    ),
                    SizedBox(height: 15),
                    TutorCard(
                      name: "Chinwendu",
                      country: "Nigeria",
                      price: "\$20 PER/HR",
                      stars: 2,
                      borderColor: Color(0xFF562F00),
                    ),
                    SizedBox(height: 15),
                    TutorCard(
                      name: "Chinazom",
                      country: "Japan",
                      price: "\$50 PER/HR",
                      stars: 5,
                      borderColor: Colors.orange,
                    ),
                    SizedBox(height: 15),
                    TutorCard(
                      name: "Ebubechukwu",
                      country: "Mexico",
                      price: "\$50 PER/HR",
                      stars: 5,
                      borderColor: Colors.orange,
                    ),
                    SizedBox(height: 15),
                    TutorCard(
                      name: "Chielotam",
                      country: "Poland",
                      price: "\$50 PER/HR",
                      stars: 5,
                      borderColor: Colors.orange,
                    ),
                    SizedBox(height: 15),
                    TutorCard(
                      name: "Chidiebere",
                      country: "Poland",
                      price: "\$50 PER/HR",
                      stars: 5,
                      borderColor: Colors.orange,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // BUTTON
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
                          label: const Text(
                            "Classes",
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
      ),
    );
  }
}