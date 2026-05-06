import 'package:flutter/material.dart';
import 'recipedetail.dart';

class RecipesPage extends StatelessWidget {
  final int currentIndex;

  const RecipesPage({super.key, this.currentIndex = 0});

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
                  Image.asset(
                    'assets/string_flags.png',
                    width: 150,
                    height: 130,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.person, color: Color(0xFF562F00)),
                      SizedBox(width: 10),
                      Icon(Icons.notifications, color: Color(0xFF562F00)),
                    ],
                  ),
                ],
              ),
            ),

            // SEARCH
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "RECIPIES",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF562F00),
              ),
            ),

            const SizedBox(height: 10),

            // LIST
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  _recipeCard(context, "Egusi Soup"),
                  _recipeCard(context, "White Soup"),
                  _recipeCard(context, "Yam Pepper Soup"),
                ],
              ),
            ),

            _bottomNav(context),
          ],
        ),
      ),
    );
  }

  Widget _recipeCard(BuildContext context, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xFFFF9644)),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF562F00),
            ),
          ),

          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailsPage(title: title),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFF9644),
            ),
            child: const Text("TRY IT"),
          ),
        ],
      ),
    );
  }

  Widget _bottomNav(BuildContext context) {
    return Container(
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
    );
  }
}
