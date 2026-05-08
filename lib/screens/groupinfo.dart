import 'package:flutter/material.dart';
import 'package:geo_lore/Widget/newgroupcomponents.dart';

class GroupInfoPage extends StatelessWidget {
  const GroupInfoPage({super.key});

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

              const CircleAvatar(
                radius: 42,
                backgroundColor: Color(0xFFFF9644),
                child: Icon(
                  Icons.groups,
                  size: 50,
                  color: Color(0xFF562F00),
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'GeoLore',
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
                    icon: Icons.person_add_alt,
                    text: 'Add+',
                  ),
                  InfoActionButton(
                    icon: Icons.event,
                    text: 'Events',
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
                            '4 members',
                            style: TextStyle(
                              color: Color(0xFFFF9644),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.search),
                        ],
                      ),

                      const SizedBox(height: 18),

                      const GroupMemberTile(
                        name: 'Chinazom',
                        creator: true,
                      ),

                      const GroupMemberTile(name: 'Princess'),

                      const GroupMemberTile(name: 'Chielotam'),

                      const GroupMemberTile(name: 'Ella'),

                      const Spacer(),

                      const DangerOption(
                        icon: Icons.logout,
                        text: 'Exit group',
                      ),

                      const SizedBox(height: 12),

                      const DangerOption(
                        icon: Icons.report_gmailerrorred,
                        text: 'Report group',
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

