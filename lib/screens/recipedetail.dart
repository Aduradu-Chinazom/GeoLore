import 'package:flutter/material.dart';

class RecipeDetailsPage extends StatelessWidget {
  final String title;

  const RecipeDetailsPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
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
                  Image.asset('assets/string_flags.png',
                      width: 150, height: 130),
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

            Text(
              title.toUpperCase(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF562F00),
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFF562F00)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [

                      Text(
                        "Ingredients",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "• Egusi (about 1 cup)\n"
                        "• Palm oil\n"
                        "• Assorted meat\n"
                        "• Stockfish\n"
                        "• Dry fish\n"
                        "• Pepper\n"
                        "• Seasoning cubes\n"
                        "• Salt\n"
                        "• Vegetables (Ugu)\n",
                      ),

                      SizedBox(height: 10),

                      Text(
                        "Steps to Cook Egusi Soup",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "1. Prepare the meat\n"
                        "2. Add onions and seasoning\n"
                        "3. Add palm oil\n"
                        "4. Add egusi paste\n"
                        "5. Cook and stir\n"
                        "6. Add vegetables\n"
                        "7. Serve hot 🍲",
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text("Back"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF9644),
              ),
            ),

            const SizedBox(height: 10),

            // bottom nav
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              color: const Color(0xFF562F00),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.chat, color: Colors.white),
                  Icon(Icons.school, color: Colors.white),
                  Icon(Icons.home, color: Colors.orange),
                  Icon(Icons.person, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}