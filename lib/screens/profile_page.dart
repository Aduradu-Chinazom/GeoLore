import 'dart:io';
import 'package:flutter/material.dart';
import 'edit_profile_page.dart';
import 'location_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _profileImage;

  Future<void> _pickImage() async {
    final picked = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 85,
    );

    if (picked != null) {
      setState(() {
        _profileImage = File(picked.path);
      });
    }
  }

  void _navigateToMain(BuildContext context, int index) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => MainLayout(initialIndex: index),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    const brown = Color(0xFF562F00);
    const orange = Color(0xFFFF9644);

    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/string_flags.png',
                    width: 150,
                    height: 130,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.person,
                          color: Color(0xFF562F00)),
                      const SizedBox(width: 10),
                      Stack(
                        children: [
                          const Icon(Icons.notifications,
                              color: Color(0xFF562F00)),
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
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),

              const SizedBox(height: 18),

              // ================= PROFILE INFO =================
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // PROFILE IMAGE
                  GestureDetector(
                    onTap: _pickImage,
                    child: Stack(
                      children: [
                        Container(
                          width: 118,
                          height: 118,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: brown,
                              width: 1.5,
                            ),
                            image: _profileImage != null
                                ? DecorationImage(
                                    image: FileImage(_profileImage!),
                                    fit: BoxFit.cover,
                                  )
                                : null,
                            color: const Color(0xFFF3E4D5),
                          ),
                          child: _profileImage == null
                              ? const Icon(
                                  Icons.person,
                                  size: 55,
                                  color: brown,
                                )
                              : null,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 25),

                  // NAME + EMAIL + BUTTON
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Queen Barbs",
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: brown,
                            ),
                          ),

                          const SizedBox(height: 1),

                          Text(
                            "chris@gmail.com",
                            style: TextStyle(
                              fontSize: 18,
                              color: brown.withOpacity(0.75),
                            ),
                          ),

                          const SizedBox(height: 10),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const EditProfilePage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF9644),
                        ),
                        child: const Text("Edit Profile"),
                      )
                    ],
                  )
                ],
              ),

              const SizedBox(height: 38),

              // ================= MENU =================
              Expanded(
                child: ListView(
                  children: const [
                    ProfileTile(
                        icon: Icons.location_on,
                        title: "Location"),
                    ProfileTile(
                        icon: Icons.language,
                        title: "Language"),
                    ProfileTile(
                        icon: Icons.cleaning_services,
                        title: "Clear cache"),
                    ProfileTile(
                        icon: Icons.info,
                        title: "About GeoLore"),
                    ProfileTile(
                        icon: Icons.school,
                        title: "Language Tutor"),
                    ProfileTile(
                      icon: Icons.logout,
                      title: "Log out",
                      isLogout: true,
                    ),
                  ],
                ),
              ),
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

class ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isLogout;

  const ProfileTile({
    super.key,
    required this.icon,
    required this.title,
    this.isLogout = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: isLogout ? Colors.red : const Color(0xFF562F00),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isLogout ? Colors.red : const Color(0xFF562F00),
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
    );
  }
}

