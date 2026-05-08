import 'package:flutter/material.dart';
// ========================= GROUP TILE =========================

class GroupTile extends StatelessWidget {
  final String name;
  final int count;

  const GroupTile({
    super.key,
    required this.name,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          const Icon(
            Icons.groups,
            color: Color(0xFF562F00),
            size: 34,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0xFF562F00),
                  ),
                ),

                const SizedBox(height: 4),

                const Text(
                  "Zomie: Yo how’s your mom, I’ve been...",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFF7A5A3A),
                  ),
                ),
              ],
            ),
          ),

          Column(
            children: [
              const Text('10:22'),

              const SizedBox(height: 6),

              if (count > 0)
                Container(
                  width: 22,
                  height: 22,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFF9644),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      '$count',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

// ========================= FILTER CHIP =========================

class FilterChipWidget extends StatelessWidget {
  final String text;
  final bool active;

  const FilterChipWidget({
    super.key,
    required this.text,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: active
            ? const Color(0xFFFFE7D3)
            : Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xFFC35257),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF562F00),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

// ========================= GROUP MESSAGE =========================

class GroupMessage extends StatelessWidget {
  final String name;
  final bool large;

  const GroupMessage({
    super.key,
    required this.name,
    this.large = false,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 10,
            backgroundColor: Color(0xFF562F00),
          ),

          const SizedBox(width: 8),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF562F00),
                ),
              ),

              const SizedBox(height: 4),

              Container(
                width: large ? 110 : 80,
                height: large ? 60 : 35,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF9644),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ========================= PERSON CARD =========================

class PersonCard extends StatelessWidget {
  final String buttonText;

  const PersonCard({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFFFE7D3),
        ),
      ),
      child: Column(
        children: [
          const Text(
            'Chinazom',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xFF562F00),
            ),
          ),

          const SizedBox(height: 8),

          const CircleAvatar(
            radius: 22,
            backgroundColor: Color(0xFFFF9644),
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),

          const Spacer(),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFFF9644),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              buttonText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ========================= CHAT INPUT =========================

class ChatInputBar extends StatelessWidget {
  const ChatInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: const Color(0xFFFFE7D3),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color(0xFFC35257),
        ),
      ),
      child: Row(
        children: const [
          Icon(
            Icons.emoji_emotions_outlined,
            color: Color(0xFF562F00),
          ),

          SizedBox(width: 10),

          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Type a message...',
                border: InputBorder.none,
              ),
            ),
          ),

          Icon(
            Icons.mic,
            color: Color(0xFF562F00),
          ),

          SizedBox(width: 10),

          Icon(
            Icons.graphic_eq,
            color: Color(0xFFFF9644),
          ),
        ],
      ),
    );
  }
}

// ========================= COMMUNITY HEADER =========================

class CommunityHeader extends StatelessWidget {
  final String title;

  const CommunityHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),
      color: const Color(0xFFFFE7D3),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Color(0xFFFF9644),
            child: Icon(
              Icons.public,
              color: Colors.white,
            ),
          ),

          const SizedBox(width: 10),

          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF562F00),
            ),
          ),
        ],
      ),
    );
  }
}
