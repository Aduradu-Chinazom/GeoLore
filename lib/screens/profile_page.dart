import 'package:flutter/material.dart';
import 'package:geo_lore/screens/clearcache_page.dart';
import 'package:geo_lore/screens/languages_page.dart';
import 'about_page.dart';
import 'edit_profile_page.dart';
import 'location_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
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

              const SizedBox(height: 10),

              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),

                  const SizedBox(width: 15),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Queen Barbs",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF562F00),
                        ),
                      ),

                      const Text("chris@gmail.com"),

                      const SizedBox(height: 10),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EditProfilePage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF9644),
                        ),
                        child: const Text("Edit Profile"),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Expanded(
                child: ListView(
                  children: [
                    ProfileTile(
                      icon: Icons.location_on,
                      title: "Location",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LocationPage(),
                          ),
                        );
                      },
                    ),
                    ProfileTile(icon: Icons.language, title: "Language", onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LanguagesPage(),
                          ),
                        );
                      },),

                    ProfileTile(
                      icon: Icons.cleaning_services,
                      title: "Clear cache",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ClearCachePage(),
                          ),
                        );
                      },
                    ),
                    ProfileTile(
                      icon: Icons.info,
                      title: "About GeoLore",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutGeoLorePage(),
                          ),
                        );
                      },
                    ),
                    const ProfileTile(
                      icon: Icons.school,
                      title: "Language Tutor",
                    ),
                    const ProfileTile(
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
  final VoidCallback? onTap;

  const ProfileTile({
    super.key,
    required this.icon,
    required this.title,
    this.isLogout = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,

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
