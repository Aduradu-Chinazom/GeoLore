import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back),
                    ),

                    const SizedBox(width: 20),

                    const Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF9644),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 30),

                Center(
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('assets/profile.jpg'),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.camera_alt,
                              color: Colors.white, size: 18),
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                const Text("Name"),
                const SizedBox(height: 5),
                _field("Chinazom"),

                const SizedBox(height: 15),

                const Text("Email"),
                const SizedBox(height: 5),
                _field("chielotam@gmail.com"),

                const SizedBox(height: 15),

                const Text("Username"),
                const SizedBox(height: 5),
                _field("Eboobs"),

                const SizedBox(height: 15),

                const Text("Password"),
                const SizedBox(height: 5),
                _field("••••••••"),

                const SizedBox(height: 15),

                const Text("Phone number"),
                const SizedBox(height: 5),
                _field("+234 916 09 37 25"),

                const SizedBox(height: 30),

                Align(
                  alignment: Alignment.centerRight,
                  child: FloatingActionButton(
                    backgroundColor: const Color(0xFFFF9644),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.edit),
                  ),
                )
              ],
            ),
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

  static Widget _field(String hint) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey.shade200,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
