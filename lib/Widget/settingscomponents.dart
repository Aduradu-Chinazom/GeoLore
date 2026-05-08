import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String title;

  const SettingsTile({
    super.key,
    required this.title, required Null Function() onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: Color(0xFF562F00),
              ),
            ),
          ),

          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Color(0xFF562F00),
          ),
        ],
      ),
    );
  }
}

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key, required Null Function() onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 42,
      decoration: BoxDecoration(
        color: const Color(0xFFFF9644),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          '← Back',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class CancelButtonWidget extends StatelessWidget {
  const CancelButtonWidget({super.key, required Null Function() onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 46,
      decoration: BoxDecoration(
        color: const Color(0xFFFF9644),
        borderRadius: BorderRadius.circular(14),
      ),
      child: const Center(
        child: Text(
          'Cancel',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class StorageProgress extends StatelessWidget {
  const StorageProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '120 GB used of 128 GB',
          style: TextStyle(
            color: Color(0xFF562F00),
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            minHeight: 8,
            value: 0.93,
            backgroundColor: Colors.grey.shade300,
            valueColor: const AlwaysStoppedAnimation(
              Color(0xFFFF9644),
            ),
          ),
        ),

        const SizedBox(height: 10),

        Row(
          children: const [
            StorageLegend(
              color: Color(0xFFFF9644),
              text: 'System',
            ),

            SizedBox(width: 20),

            StorageLegend(
              color: Color(0xFF562F00),
              text: 'App data',
            ),

            SizedBox(width: 20),

            StorageLegend(
              color: Colors.grey,
              text: 'Other',
            ),
          ],
        ),
      ],
    );
  }
}

class StorageLegend extends StatelessWidget {
  final Color color;
  final String text;

  const StorageLegend({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),

        const SizedBox(width: 6),

        Text(text),
      ],
    );
  }
}

class StorageTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String size;

  const StorageTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFFFE7D3),
        borderRadius: BorderRadius.circular(16),
      ),

      child: Row(
        children: [
          const Icon(
            Icons.storage,
            color: Color(0xFF562F00),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF562F00),
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          Text(
            size,
            style: const TextStyle(
              color: Color(0xFF562F00),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class EventTopBar extends StatelessWidget {
  const EventTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 46,
            padding: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(
              children: const [
                Icon(Icons.search),

                SizedBox(width: 8),

                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(width: 12),

        const Icon(Icons.person),

        const SizedBox(width: 10),

        const Icon(Icons.notifications_none),
      ],
    );
  }
}

class SettingsBottomNav extends StatelessWidget {
  const SettingsBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: const Color(0xFF562F00),
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
    );
  }
}