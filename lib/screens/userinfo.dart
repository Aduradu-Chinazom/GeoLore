import 'package:flutter/material.dart';
import 'package:geo_lore/Widget/newgroupcomponents.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE7D3),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(height: 10),

              const Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF562F00),
                ),
              ),

              const SizedBox(height: 10),

              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFFFF9644),
                    width: 8,
                  ),
                ),
                child: const Icon(
                  Icons.person,
                  size: 65,
                  color: Color(0xFF562F00),
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Ella',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF562F00),
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  InfoActionButton(
                    icon: Icons.message_outlined,
                    text: 'Message',
                  ),
                  InfoActionButton(
                    icon: Icons.person_remove_alt_1,
                    text: 'Unadd',
                  ),
                ],
              ),

              const SizedBox(height: 22),

              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFDF1),
                    borderRadius: BorderRadius.circular(18),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            '2 groups in common',
                            style: TextStyle(
                              color: Color(0xFFFF9644),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.search),
                        ],
                      ),

                      const SizedBox(height: 20),

                      const CommonGroupTile(name: 'Igbo babes'),

                      const SizedBox(height: 14),

                      const CommonGroupTile(name: 'Latina’s'),

                      const Spacer(),

                      const DangerOption(
                        icon: Icons.person_remove,
                        text: 'Remove friend',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
