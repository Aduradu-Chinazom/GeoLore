import 'package:flutter/material.dart';
import 'package:geo_lore/screens/communitygroupspage.dart';
import 'package:geo_lore/screens/home.dart';
import 'package:geo_lore/screens/profile_page.dart';
//import 'package:geo_lore/screens/languages.dart';
import 'package:geo_lore/screens/teacher.dart';
//import 'package:geo_lore/screens/history.dart';
import 'package:geo_lore/screens/ai_chat_page.dart';

class MainLayout extends StatefulWidget {
  final int initialIndex;
  
  const MainLayout({super.key, this.initialIndex = 0});

  @override
  State<MainLayout> createState() => MainLayoutState();
}

// Make the state class public so it can be accessed from other files
class MainLayoutState extends State<MainLayout> {
  late int _selectedIndex;
  
  final List<Widget> _pages = [
    const AiChatPage(),           // Index 0 - Chat/AI Tutor
    const TeacherPage(),          // Index 1 - School/Teacher
    const HomePage(),             // Index 2 - Home
    const ProfilePage(),          // Index 3 - Profile
    const CommunityGroupsPage(),  // Index 4 - Community
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  // This method needs to be public so HomePage can call it
  void setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(color: Color(0xFF562F00)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.chat, 0, 'Chat'),
            _buildNavItem(Icons.school, 1, 'Teacher'),
            _buildNavItem(Icons.home, 2, 'Home'),
            _buildNavItem(Icons.person, 3, 'Profile'),
            _buildNavItem(Icons.people, 4, 'Community'),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index, String label) {
    final bool isSelected = _selectedIndex == index;
    
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.orange : Colors.white,
            size: 28,
          ),
          if (isSelected)
            Container(
              margin: const EdgeInsets.only(top: 2),
              height: 3,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
        ],
      ),
    );
  }
}