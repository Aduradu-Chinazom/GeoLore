import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:geo_lore/main_layout.dart';
import 'edit_profile_page.dart';

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
              const SizedBox(height: 10),

              // ================= HEADER =================
              SizedBox(
                height: 78,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: -10,
                      top: -28,
                      child: Image.asset(
                        'assets/string_flags.png',
                        width: 230,
                        height: 130,
                        fit: BoxFit.contain,
                      ),
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 44,
                            margin: const EdgeInsets.only(top: 12),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                color: const Color(0xFFC35257),
                                width: 1.1,
                              ),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.search,
                                  color: brown,
                                  size: 20,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Search",
                                  style: TextStyle(
                                    color: brown,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(width: 14),

                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Icon(
                            Icons.person,
                            color: brown,
                            size: 28,
                          ),
                        ),

                        const SizedBox(width: 10),

                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Stack(
                            children: [
                              const Icon(
                                Icons.notifications_none,
                                color: brown,
                                size: 28,
                              ),

                              Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "5",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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

                          SizedBox(
                            width: 140,
                            height: 38,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        const EditProfilePage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: orange,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                "Edit Profile",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 38),

              // ================= MENU =================
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    _buildMenuItem(
                      icon: Icons.location_on_outlined,
                      title: "Location",
                    ),

                    _buildMenuItem(
                      icon: Icons.language,
                      title: "Language",
                    ),

                    _buildMenuItem(
                      icon: Icons.sync,
                      title: "Clear cache",
                    ),

                    _buildMenuItem(
                      icon: Icons.history,
                      title: "About GeoLore",
                    ),

                    _buildMenuItem(
                      icon: Icons.public,
                      title: "Language Tutor",
                    ),

                    _buildMenuItem(
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

    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    bool isLogout = false,
  }) {
    const brown = Color(0xFF562F00);

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 6,
            horizontal: 2,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: isLogout ? Colors.red : brown,
                size: 28,
              ),

              const SizedBox(width: 18),

              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: isLogout ? Colors.red : brown,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              Icon(
                Icons.chevron_right,
                color: brown.withOpacity(0.7),
                size: 28,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

