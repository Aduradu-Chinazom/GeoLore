import 'package:flutter/material.dart';
import 'package:geo_lore/Widget/components.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(height: 18),
              const TopBar(),
              const SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: const [
                    ReminderCard(),
                    SizedBox(height: 18),
                    ReminderCard(),
                    SizedBox(height: 18),
                    LessonCard(),
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
