import 'package:flutter/material.dart';
import 'package:geo_lore/Widget/settingscomponents.dart';

import 'about_page.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF9644),
                    borderRadius: BorderRadius.circular(18),
                  ),

                  child: Column(
                    children: const [
                      Text(
                        'PRIVACY POLICY',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 20),

                      Expanded(
                        child: SingleChildScrollView(
                          child: Text(
                            'Our privacy policy. Lorem ipsum dolor sit amet consectetur adipisicing elit...',
                            style: TextStyle(color: Colors.white, height: 1.6),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              BackButtonWidget(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutGeoLorePage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const SettingsBottomNav(),
    );
  }
}
