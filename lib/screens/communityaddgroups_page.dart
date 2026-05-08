import 'package:flutter/material.dart';
import 'package:geo_lore/Widget/components2.dart';
import 'package:geo_lore/Widget/components.dart';

class CommunityAddGroupsPage extends StatelessWidget {
  const CommunityAddGroupsPage({super.key});

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
              const SizedBox(height: 18),
              Row(
                children: [
                  _chip('All', true),
                  const SizedBox(width: 8),
                  _chip('Groups', false),
                  const SizedBox(width: 8),
                  _chip('Add +', false),
                  const SizedBox(width: 8),
                  _chip('Groups +', false),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Groups around you',
                style: TextStyle(
                  color: Color(0xFF562F00),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 14),
              SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    PersonCard(buttonText: 'Add+'),
                    SizedBox(width: 14),
                    PersonCard(buttonText: 'Add+'),
                    SizedBox(width: 14),
                    PersonCard(buttonText: 'Add+'),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Connect with groups round the world',
                style: TextStyle(
                  color: Color(0xFF562F00),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 14),
              SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    PersonCard(buttonText: 'Add+'),
                    SizedBox(width: 14),
                    PersonCard(buttonText: 'Add+'),
                    SizedBox(width: 14),
                    PersonCard(buttonText: 'Add+'),
                  ],
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF9644),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'New Group',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: const Color(0xFF562F00),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.chat, color: Colors.white),
            Icon(Icons.school, color: Colors.white),
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.person, color: Colors.white),
            Icon(Icons.people, color:  Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget _chip(String text, bool active) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: active ? const Color(0xFFFFE7D3) : Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Text(text),
    );
  }
}
