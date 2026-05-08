import 'package:flutter/material.dart';
import 'package:geo_lore/Widget/components.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

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
                children: [
                  const Icon(Icons.arrow_back, color: Color(0xFF562F00)),
                  const SizedBox(width: 12),
                  const CircleAvatar(
                    backgroundColor: Color(0xFFFF9644),
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Princessa',
                    style: TextStyle(
                      fontSize: 18,
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
                      child: const Text(
                        'Today',
                        style: TextStyle(
                          color: Color(0xFF562F00),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: MessageBubble(isSender: true),
                    ),
                    const SizedBox(height: 16),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: MessageBubble(isSender: false),
                    ),
                    const SizedBox(height: 16),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: MessageBubble(isSender: true),
                    ),
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
                          Icon(
                            Icons.emoji_emotions_outlined,
                            color: Color(0xFF562F00),
                          ),
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
                          Icon(Icons.graphic_eq, color: Color(0xFFFF9644)),
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
      bottomNavigationBar: const CustomBottomNav(index: 4),
    );
  }
}
