import 'package:flutter/material.dart';
import 'package:geo_lore/Widget/components2.dart';
import 'package:geo_lore/Widget/components.dart';

class GroupChatPage extends StatelessWidget {
  const GroupChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              color: const Color(0xFFFFE7D3),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Color(0xFFFF9644),
                    child: Icon(Icons.public, color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'GeoLore',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF562F00),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE7D3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text('Today'),
                    ),
                    const SizedBox(height: 24),
                    const GroupMessage(name: 'Princess'),
                    const SizedBox(height: 14),
                    const GroupMessage(name: 'Princess'),
                    const SizedBox(height: 14),
                    const GroupMessage(name: 'Chielotam', large: true),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: MessageBubble(isSender: false),
                    ),
                    const SizedBox(height: 20),
                    const GroupMessage(name: 'Princess'),
                    const SizedBox(height: 14),
                    const GroupMessage(name: 'Princess'),
                    const SizedBox(height: 14),
                    const GroupMessage(name: 'Chielotam', large: true),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE7D3),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: const Color(0xFFC35257)),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.emoji_emotions_outlined,
                              color: Color(0xFF562F00)),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Type a message...',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(Icons.mic, color: Color(0xFF562F00)),
                          SizedBox(width: 10),
                          Icon(Icons.graphic_eq,
                              color: Color(0xFFFF9644)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
}
