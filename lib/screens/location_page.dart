import 'package:flutter/material.dart';
import 'package:geo_lore/Widget/settingscomponents.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),

      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/map.png',
              fit: BoxFit.cover,
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  const SizedBox(height: 10),

                  const EventTopBar(),

                  const Spacer(),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),

                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 26,
                          backgroundColor: Color(0xFFFF9644),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),

                        const SizedBox(width: 12),

                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'FCT - Abuja',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF562F00),
                                ),
                              ),

                              SizedBox(height: 4),

                              Text(
                                'Gwarimpa\nPlot 5, Star Street',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: const SettingsBottomNav(),
    );
  }
}
