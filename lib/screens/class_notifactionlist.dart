import 'package:flutter/material.dart';

class ClassNotificationList extends StatelessWidget {
  final int currentIndex;

  const ClassNotificationList({super.key, this.currentIndex = 1});

  @override
  Widget build(BuildContext context) {

    // 🔴 Dummy data (replace later with Firebase)
    final List<Map<String, String>> notifications = [
      {
        "title": "New Booking",
        "message": "You have a new class with Chinazom",
        "time": "2 mins ago"
      },
      {
        "title": "Reschedule Request",
        "message": "Chielotam requested a new time",
        "time": "10 mins ago"
      },
      {
        "title": "Payment Confirmed",
        "message": "Your payment of \$40 was successful",
        "time": "1 hour ago"
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),

      body: SafeArea(
        child: Column(
          children: [

            const SizedBox(height: 20),

            // HEADER
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
                      Icon(Icons.person, color: Color(0xFF562F00)),
                      SizedBox(width: 10),
                      Icon(Icons.notifications, color: Color(0xFF562F00)),
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "NOTIFICATIONS",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF562F00),
              ),
            ),

            const SizedBox(height: 10),

            // LIST
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  final item = notifications[index];

                  return Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: const Color(0xFFFF9644)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["title"]!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF562F00),
                          ),
                        ),

                        const SizedBox(height: 5),

                        Text(item["message"]!),

                        const SizedBox(height: 5),

                        Text(
                          item["time"]!,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // 🔽 BOTTOM NAV
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
            )
          ],
        ),
      ),
    );
  }

  Widget _navItem(BuildContext context, IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        // 🔗 connect to your pages
      },
      child: Icon(
        icon,
        color: currentIndex == index
            ? const Color(0xFFFF9644)
            : Colors.white,
      ),
    );
  }
}