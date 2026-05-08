import 'package:flutter/material.dart';

class ClassNotificationempty extends StatelessWidget {
  final int currentIndex;

  const ClassNotificationempty({super.key, this.currentIndex = 1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),

      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // HEADER (flags + icons)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/string_flags.png',
                    width: 150,
                    height: 130,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.person, color: Color(0xFF562F00), size: 28),
                      SizedBox(width: 10),

                      Icon(
                        Icons.notifications,
                        color: Color(0xFF562F00),
                        size: 28,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Spacer(),

            // TIGER IMAGE
            Image.asset(
              'assets/Charming chibi tiger cub.png', // 👈 replace with your tiger image
              width: 250,
            ),

            const SizedBox(height: 20),

            const Text(
              "You’re all caught up",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF562F00),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "You currently have no\nscheduled classes",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Color(0xFF562F00)),
            ),

            const Spacer(),

            // 🔽 BOTTOM NAV (your style)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              color: const Color(0xFF562F00),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _navItem(context, Icons.chat, 0),
                  _navItem(context, Icons.school, 1),
                  _navItem(context, Icons.home, 2),
                  _navItem(context, Icons.person, 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _navItem(BuildContext context, IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        // 👉 Replace with your actual pages
        // Example:
        // Navigator.pushReplacement(...);
      },
      child: Icon(
        icon,
        color: currentIndex == index
            ? const Color(0xFFFF9644) // active
            : Colors.white,
      ),
    );
  }
}
