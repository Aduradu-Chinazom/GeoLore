import 'package:flutter/material.dart';

import 'app_drawer.dart';

class AiChatPage extends StatefulWidget {
  const AiChatPage({super.key});

  @override
  State<AiChatPage> createState() => _AiChatPageState();
}

class _AiChatPageState extends State<AiChatPage> {
  final TextEditingController messageController = TextEditingController();

  final List<String> suggestions = [
    "What is this?",
    "Who is...",
    "What happened in...",
    "Fun facts",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),
      drawer: const AppDrawer(),

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
                  Builder(
                    builder: (context) => GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: const Icon(
                        Icons.menu,
                        color: Color(0xFF562F00),
                        size: 30,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/string_flags.png',
                        width: 120,
                        height: 80,
                      ),
                      const SizedBox(width: 10),
                      const Icon(Icons.person, color: Color(0xFF562F00)),
                      const SizedBox(width: 10),
                      Stack(
                        children: [
                          const Icon(
                            Icons.notifications,
                            color: Color(0xFF562F00),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: const Text(
                                '5',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              const Spacer(),

              const Text(
                "What can I help with?",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF562F00),
                ),
              ),

              const SizedBox(height: 20),

              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: suggestions.map((text) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFE2C5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      text,
                      style: const TextStyle(
                        color: Color(0xFF562F00),
                        fontSize: 12,
                      ),
                    ),
                  );
                }).toList(),
              ),

              const Spacer(),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFE2C5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.add, color: Color(0xFF562F00)),
                    Expanded(
                      child: TextField(
                        controller: messageController,
                        decoration: const InputDecoration(
                          hintText: "Ask anything...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const Icon(Icons.mic, color: Color(0xFF562F00)),
                    const SizedBox(width: 10),
                    const Icon(Icons.graphic_eq, color: Color(0xFF562F00)),
                  ],
                ),
              ),

              const SizedBox(height: 15),
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
