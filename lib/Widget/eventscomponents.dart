import 'package:flutter/material.dart';

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
              border: Border.all(
                color: const Color(0xFFC35257),
              ),
            ),
            child: Row(
              children: const [
                Icon(
                  Icons.search,
                  color: Color(0xFF562F00),
                ),

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

        const Icon(
          Icons.person,
          color: Color(0xFF562F00),
        ),

        const SizedBox(width: 10),

        const Icon(
          Icons.notifications_none,
          color: Color(0xFF562F00),
        ),
      ],
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final bool active;
  final bool light;

  const EventCard({
    super.key,
    required this.title,
    this.active = false,
    this.light = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: active
            ? const Color(0xFFF89A4B)
            : light
                ? const Color(0xFFF3D4B8)
                : const Color(0xFFB2967D),
        borderRadius: BorderRadius.circular(16),
      ),

      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class EventInfoText extends StatelessWidget {
  final String text;

  const EventInfoText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class EventField extends StatelessWidget {
  final String title;
  final String? subtitle;

  const EventField({
    super.key,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

        if (subtitle != null)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              subtitle!,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
          ),
      ],
    );
  }
}

class ReminderOption extends StatelessWidget {
  final String text;
  final bool selected;

  const ReminderOption({
    super.key,
    required this.text,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: selected
                  ? const Color(0xFFFF9644)
                  : Colors.transparent,
              border: Border.all(color: Colors.black54),
            ),
            child: selected
                ? const Icon(
                    Icons.check,
                    size: 10,
                    color: Colors.white,
                  )
                : null,
          ),

          const SizedBox(width: 10),

          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class EventBottomNav extends StatelessWidget {
  const EventBottomNav({super.key});

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