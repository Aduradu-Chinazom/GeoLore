import 'package:flutter/material.dart';
import 'cancelclass.dart';

class ClassDetailsPage extends StatelessWidget {
  final String student;
  final String time;
  final String price;

  const ClassDetailsPage({
    super.key,
    required this.student,
    required this.time,
    required this.price,
  });

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

              // HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/string_flags.png',
                    width: 150,
                    height: 130,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.person, color: Color(0xFF562F00)),
                      SizedBox(width: 10),
                      Icon(Icons.notifications, color: Color(0xFF562F00)),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // CARD
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE2C5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListView(
                    children: [
                      const Center(
                        child: Text(
                          "CLASSES",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF562F00),
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      Text("Student: $student"),
                      Text("Time: $time"),
                      Text("Payment: \$$price"),

                      const SizedBox(height: 15),

                      const Text("Reschedule:"),

                      const SizedBox(height: 5),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "Date / Time",
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF562F00),
                        ),
                        child: const Text("Send request to student"),
                      ),

                      const SizedBox(height: 25),

                      // ✅ CANCEL BUTTON (linked properly)
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CancelClassPage(
                                student: student,
                                time: time,
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        child: const Text("Cancel Class"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // ✅ BOTTOM NAV
      bottomNavigationBar: Container(
        height: 60,
        color: const Color(0xFF562F00),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.chat, color: Colors.white),
            Icon(Icons.school, color: Colors.orange), // active
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.person, color: Colors.white),
            Icon(Icons.people, color: Colors.white),
          ],
        ),
      ),
    );
  }
}