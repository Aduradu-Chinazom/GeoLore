import 'package:flutter/material.dart';
import 'package:geo_lore/Widget/settingscomponents.dart';

class ClearCachePage extends StatelessWidget {
  const ClearCachePage({super.key});

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
              const SizedBox(height: 30),

              const Text(
                'Storage',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFF9644),
                ),
              ),

              const SizedBox(height: 20),

              const StorageProgress(),

              const SizedBox(height: 30),

              const StorageTile(
                title: 'Facebook',
                subtitle: 'Offline data & cache',
                size: '1.8 GB',
              ),

              const SizedBox(height: 16),

              const StorageTile(
                title: 'Chrome',
                subtitle: 'Offline data',
                size: '1.3 GB',
              ),

              const SizedBox(height: 16),

              const StorageTile(
                title: 'Spotify',
                subtitle: 'Offline data',
                size: '1.5 GB',
              ),

              const Spacer(),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFE7D3),
                  borderRadius: BorderRadius.circular(16),
                ),

                child: Row(
                  children: const [
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Clear cached data',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF562F00),
                            ),
                          ),

                          SizedBox(height: 4),

                          Text(
                            'Free up 23GB',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Icon(
                      Icons.delete_outline,
                      color: Colors.brown,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const SettingsBottomNav(),
    );
  }
}
