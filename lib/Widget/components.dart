
import 'package:flutter/material.dart';
class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 78,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: -10,
            top: -25,
            child: Image.asset(
              'assets/string_flags.png',
              width: 210,
              height: 120,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 46,
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: const Color(0xFFC35257)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 8,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.search, color: Color(0xFF562F00)),
                        SizedBox(width: 8),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: const Color(0xFFC35257)),
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Color(0xFF562F00),
                  ),
                ),
                const SizedBox(width: 10),
                Stack(
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: const Color(0xFFC35257)),
                      ),
                      child: const Icon(
                        Icons.notifications_none,
                        color: Color(0xFF562F00),
                      ),
                    ),
                    Positioned(
                      right: 4,
                      top: 4,
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Text(
                            '5',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReminderCard extends StatelessWidget {
  const ReminderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFFFFE7D3),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: const Color(0xFFC35257)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(
                  Icons.notifications_active,
                  color: Color(0xFFFF9644),
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Text(
                  'Reminder',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF562F00),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  '25 min',
                  style: TextStyle(
                    color: Color(0xFF562F00),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          const Text(
            "You have lessons today at 6:00pm. Be punctual and prepare your materials before class starts.",
            style: TextStyle(
              color: Color(0xFF7A5A3A),
              height: 1.5,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF9644),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Mark as done',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFFF9644)),
                ),
                child: const Text(
                  'Update',
                  style: TextStyle(
                    color: Color(0xFFFF9644),
                    fontWeight: FontWeight.bold,
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

class LessonCard extends StatelessWidget {
  const LessonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: const Color(0xFFC35257)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFE7D3),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(
                  Icons.school,
                  color: Color(0xFFFF9644),
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Text(
                  "It's time for your lesson",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF562F00),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFE7D3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  '1 week',
                  style: TextStyle(
                    color: Color(0xFF562F00),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          const Text(
            "Your cultural studies lesson begins today at 6:00pm. Complete your practice exercises before joining.",
            style: TextStyle(
              color: Color(0xFF7A5A3A),
              fontSize: 15,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 18),
          Container(
            width: double.infinity,
            height: 8,
            decoration: BoxDecoration(
              color: const Color(0xFFFFE7D3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: 0.7,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFF9644),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFF9644),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Center(
                    child: Text(
                      'Join Lesson',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: const Color(0xFFFF9644)),
                ),
                child: const Icon(
                  Icons.edit_calendar,
                  color: Color(0xFFFF9644),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  final String name;
  final int count;

  const ChatTile({
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
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFF562F00),
                width: 2,
              ),
            ),
            child: const Icon(Icons.person, color: Color(0xFF562F00)),
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
                  "Yo how's your mom, I've been trying ...",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Color(0xFF7A5A3A)),
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

class MessageBubble extends StatelessWidget {
  final bool isSender;

  const MessageBubble({
    super.key,
    required this.isSender,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 40,
      decoration: BoxDecoration(
        color: isSender
            ? const Color(0xFFFF9644)
            : const Color(0xFFFFE7D3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFC35257)),
      ),
    );
  }
}

class CustomBottomNav extends StatelessWidget {
  final int index;

  const CustomBottomNav({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: const BoxDecoration(
        color: Color(0xFF562F00),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.chat,
              color: index == 0
                  ? const Color(0xFFFF9644)
                  : Colors.white70),
          Icon(Icons.school,
              color: index == 1
                  ? const Color(0xFFFF9644)
                  : Colors.white70),
          Icon(Icons.home,
              color: index == 2
                  ? const Color(0xFFFF9644)
                  : Colors.white70),
          Icon(Icons.person,
              color: index == 3
                  ? const Color(0xFFFF9644)
                  : Colors.white70),
          Icon(Icons.people,
              color: index == 4
                  ? const Color(0xFFFF9644)
                  : Colors.white70),
        ],
      ),
    );
  }
}
