import 'package:flutter/material.dart';
import 'package:geo_lore/Widget/components.dart';

class EmptyNotificationPage extends StatelessWidget {
  const EmptyNotificationPage({super.key});

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
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFE7D3),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.notifications_none,
                          size: 70,
                          color: Color(0xFFFF9644),
                        ),
                      ),
                      const SizedBox(height: 28),
                      const Text(
                        "You're all caught up",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF562F00),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Come back later for reminders',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF7A5A3A),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNav(index: 0),
    );
  }
}
