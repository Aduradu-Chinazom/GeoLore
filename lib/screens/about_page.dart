import 'package:flutter/material.dart';
import 'package:geo_lore/Widget/settingscomponents.dart';
import 'package:geo_lore/screens/privacypolicy_page.dart';
import 'package:geo_lore/screens/termsandconditions_page.dart';

class AboutGeoLorePage extends StatelessWidget {
  const AboutGeoLorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 28),

              const Text(
                'About GeoLore',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF9644),
                ),
              ),

              const SizedBox(height: 40),

              SettingsTile(
                title: 'Terms and Conditions',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TermsPage()),
                  );
                },
              ),

              SettingsTile(
                title: 'Privacy Policy',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyPage(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 30),

              const Text(
                'Geo-Lore is a language learning platform that teaches people all over about their culture and tradition',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: Color(0xFF562F00),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const SettingsBottomNav(),
    );
  }
}
