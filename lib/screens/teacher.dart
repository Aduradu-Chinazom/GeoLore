import 'package:flutter/material.dart';
import '../Widget/ReviewItem.dart';

class TeacherPage extends StatelessWidget {
  const TeacherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),

              // HEADER (flags + icons)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/string_flags.png',
                    width: 150, height: 130
                  ),
                  Row(
                    children: const [
                      Icon(Icons.person, color: Color(0xFF562F00), size: 30,),
                      SizedBox(width: 10),
                      Icon(Icons.notifications,
                          color: Color(0xFF562F00), size: 30,),
                    ],
                  )
                ],
              ),

              const SizedBox(height: 10),

              // PROFILE SECTION
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // PROFILE IMAGE
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      color: Color(0xFF562F00),
                      shape: BoxShape.circle,
                    ),
                  ),

                  const SizedBox(width: 15),

                  // DETAILS
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "AMAKA",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF562F00),
                        ),
                      ),

                      const SizedBox(height: 5),

                      Row(
                        children: List.generate(
                          3,
                          (index) => const Icon(Icons.star,
                              color: Colors.orange, size: 18),
                        ),
                      ),

                      const SizedBox(height: 5),

                      const Text("22 registered students", style: TextStyle(fontSize: 16),),
                      const Text("Based in Nigeria", style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 15),

              // BOOK BUTTON
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF9644),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Book Appointment",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // REVIEWS CARD
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFF562F00),  width: 2),
                  ),
                  child: ListView(
                    children: const [
                      Center(
                        child: Text(
                          "REVIEWS",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF562F00),
                          ),
                        ),
                      ),

                      SizedBox(height: 15),

                      ReviewItem(
                        name: "Aduradu Chinazom",
                        date: "17/04/26",
                        review:
                            "I really liked her, she and kind, my only issue is that she was a little late too our session",
                      ),

                      SizedBox(height: 20),

                      ReviewItem(
                        name: "Chris-Ugochukwu Princess",
                        date: "17/04/26",
                        review:
                            "Great teacher! Very patient and explains well.",
                      ),
                      SizedBox(height: 20),

                      ReviewItem(
                        name: "Amalu Chielotam",
                        date: "17/04/26",
                        review:
                            "Great teacher! Very patient and explains well.",
                      ),
                      SizedBox(height: 20),

                      ReviewItem(
                        name: "Isibor Emmanuella",
                        date: "18/04/26",
                        review:
                            "Great teacher! Very patient and explains well.",
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
}