import 'package:flutter/material.dart';

class CancelClassPage extends StatefulWidget {
  final String student;
  final String time;

  const CancelClassPage({super.key, required this.student, required this.time});

  @override
  State<CancelClassPage> createState() => _CancelClassPageState();
}

class _CancelClassPageState extends State<CancelClassPage> {
  final TextEditingController reasonController = TextEditingController();

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

              const Text(
                "CANCEL CLASS",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF562F00),
                ),
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
                      Text("Student: ${widget.student}"),
                      Text("Time: ${widget.time}"),

                      const SizedBox(height: 20),

                      const Text(
                        "Reason for cancellation:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),

                      const SizedBox(height: 5),

                      TextField(
                        controller: reasonController,
                        maxLines: 4,
                        decoration: InputDecoration(
                          hintText: "State the reason why...",
                          filled: true,
                          fillColor: Colors.grey.shade200,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      ElevatedButton(
                        onPressed: () {
                          if (reasonController.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Please enter a reason"),
                              ),
                            );
                            return;
                          }

                          // ✅ Go back to Classes (clean navigation)
                          // Navigator.pop(context); // back to details
                          // Navigator.pop(context); // back to classes
                          Navigator.popUntil(context, (route) => route.isFirst);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        child: const Text("Confirm Cancel"),
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
            Icon(Icons.school, color: Colors.orange),
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.person, color: Colors.white),
            Icon(Icons.people, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
