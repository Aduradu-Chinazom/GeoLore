import 'package:flutter/material.dart';
import 'package:geo_lore/Widget/newgroupcomponents.dart';


class NewGroupPage extends StatelessWidget {
  const NewGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(height: 18),

              const NewGroupTopBar(),

              const SizedBox(height: 18),

              Row(
                children: const [
                  FilterChipWidget(text: 'All', active: true),
                  SizedBox(width: 8),
                  FilterChipWidget(text: 'Groups'),
                  SizedBox(width: 8),
                  FilterChipWidget(text: 'Add +'),
                  SizedBox(width: 8),
                  FilterChipWidget(text: 'Groups +'),
                ],
              ),

              const SizedBox(height: 18),

              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFF9644),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      height: 48,
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFFFF9644),
                        ),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter group name',
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 18),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  MiniAvatar(name: 'Chielotam'),
                  MiniAvatar(name: 'Angela'),
                  MiniAvatar(name: 'Princess'),
                  MiniAvatar(name: 'Chigozie'),
                ],
              ),

              const SizedBox(height: 20),

              Expanded(
                child: ListView(
                  children: const [
                    SelectableUserTile(name: 'Chinazom'),
                    SizedBox(height: 10),
                    SelectableUserTile(
                      name: 'Chielotam',
                      selected: true,
                    ),
                    SizedBox(height: 10),
                    SelectableUserTile(name: 'Ella'),
                    SizedBox(height: 10),
                    SelectableUserTile(name: 'Princess'),
                    SizedBox(height: 10),
                    SelectableUserTile(
                      name: 'Angela',
                      selected: true,
                    ),
                  ],
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
