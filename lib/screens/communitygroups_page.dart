import 'package:flutter/material.dart';
//import 'package:geo_lore/main_layout.dart';
import 'package:geo_lore/Widget/components.dart';
import 'package:geo_lore/Widget/components2.dart';

class CommunityGroupsPage extends StatelessWidget {
  const CommunityGroupsPage({super.key});

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
              const SizedBox(height: 18),
              Expanded(
                child: ListView(
                  children: const [
                    GroupTile(name: 'Igbo Babes', count: 2),
                    GroupTile(name: 'Diaspora', count: 0),
                    GroupTile(name: 'Latina’s', count: 3),
                    GroupTile(name: 'Baddies', count: 0),
                    GroupTile(name: 'Friends', count: 1),
                    GroupTile(name: 'Yo Mama’s', count: 0),
                    GroupTile(name: 'People', count: 1),
                    GroupTile(name: 'Other People', count: 2),
                  ],
                ),
              ),
            ],
          ),
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