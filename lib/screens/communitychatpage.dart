import 'package:flutter/material.dart';
// import 'notification_page.dart';
import 'package:geo_lore/Widget/components.dart';

class CommunityChatPage extends StatelessWidget {
  const CommunityChatPage({super.key});

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
                  _filterChip('All', true),
                  const SizedBox(width: 8),
                  _filterChip('Groups', false),
                  const SizedBox(width: 8),
                  _filterChip('Add +', false),
                  const SizedBox(width: 8),
                  _filterChip('Groups +', false),
                ],
              ),
              const SizedBox(height: 18),
              Expanded(
                child: ListView(
                  children: const [
                    ChatTile(name: 'Chinazom', count: 2),
                    ChatTile(name: 'Chielotam', count: 1),
                    ChatTile(name: 'Princess', count: 0),
                    ChatTile(name: 'Ella', count: 1),
                    ChatTile(name: 'Yo Mama', count: 0),
                    ChatTile(name: 'Angela', count: 1),
                    ChatTile(name: 'Yarbara', count: 2),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNav(index: 4),
    );
  }

  Widget _filterChip(String text, bool active) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: active ? const Color(0xFFFFE7D3) : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFC35257)),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF562F00),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
