import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> chats = [
      "War stories",
      "Igbo History",
      "The diaspora rules",
      "New Yam Festival date",
      "War stories",
      "Igbo History",
    ];

    return Drawer(
      backgroundColor: const Color(0xFFFFFDF1),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                children: const [
                  Icon(Icons.edit, color: Color(0xFF562F00)),
                  SizedBox(width: 10),
                  Text(
                    "New chat",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF562F00),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 20),

              Expanded(
                child: ListView.builder(
                  itemCount: chats.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        chats[index],
                        style: const TextStyle(
                          color: Color(0xFF562F00),
                          fontSize: 15,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}