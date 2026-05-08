import 'package:flutter/material.dart';

class NewGroupTopBar extends StatelessWidget {
  const NewGroupTopBar({super.key});

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

class MiniAvatar extends StatelessWidget {
  final String name;

  const MiniAvatar({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            const CircleAvatar(
              radius: 18,
              backgroundColor: Color(0xFF562F00),
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 18,
              ),
            ),

            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 12,
                height: 12,
                decoration: const BoxDecoration(
                  color: Color(0xFFFF9644),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add,
                  size: 10,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 4),

        Text(
          name,
          style: const TextStyle(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}

class SelectableUserTile extends StatelessWidget {
  final String name;
  final bool selected;

  const SelectableUserTile({
    super.key,
    required this.name,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: selected
            ? const Color(0xFFFFF1E7)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xFF562F00),
        ),
      ),

      child: Row(
        children: [
          Icon(
            Icons.account_circle_outlined,
            color: selected
                ? const Color(0xFFFF9644)
                : const Color(0xFF562F00),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              name,
              style: TextStyle(
                color: selected
                    ? const Color(0xFFFF9644)
                    : const Color(0xFF562F00),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: selected
                  ? const Color(0xFFFF9644)
                  : Colors.transparent,
              border: Border.all(
                color: const Color(0xFFB48B5B),
              ),
            ),
            child: selected
                ? const Icon(
                    Icons.check,
                    size: 14,
                    color: Colors.white,
                  )
                : null,
          ),
        ],
      ),
    );
  }
}

class InfoActionButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const InfoActionButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFB48B5B),
        ),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: const Color(0xFF562F00),
          ),

          const SizedBox(height: 6),

          Text(
            text,
            style: const TextStyle(
              fontSize: 11,
              color: Color(0xFFFF9644),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class GroupMemberTile extends StatelessWidget {
  final String name;
  final bool creator;

  const GroupMemberTile({
    super.key,
    required this.name,
    this.creator = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          const Icon(
            Icons.account_circle_outlined,
            color: Color(0xFF562F00),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Text(name),
          ),

          if (creator)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFEFB37C),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'creator',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class CommonGroupTile extends StatelessWidget {
  final String name;

  const CommonGroupTile({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.groups,
          color: Color(0xFF562F00),
        ),

        const SizedBox(width: 10),

        Text(
          name,
          style: const TextStyle(
            color: Color(0xFF562F00),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class DangerOption extends StatelessWidget {
  final IconData icon;
  final String text;

  const DangerOption({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.red,
        ),

        const SizedBox(width: 10),

        Text(
          text,
          style: const TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

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