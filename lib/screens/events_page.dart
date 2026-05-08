import 'package:flutter/material.dart';
import 'package:geo_lore/Widget/eventscomponents.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

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

              const EventTopBar(),

              const SizedBox(height: 18),

              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: const DecorationImage(
                    image: AssetImage('assets/april_calendar.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                'UPCOMING EVENTS',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF562F00),
                ),
              ),

              const SizedBox(height: 18),

              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 14,
                  childAspectRatio: 1.1,
                  children: const [
                    EventCard(
                      title: 'Outing with\nthe girls',
                      active: true,
                    ),

                    EventCard(
                      title: 'Museum\nvisit',
                    ),

                    EventCard(
                      title: 'Site Seeing',
                      active: true,
                    ),

                    EventCard(
                      title: 'Zomie’s\nBirthday',
                    ),

                    EventCard(
                      title: 'Random\nevent',
                      light: true,
                    ),

                    EventCard(
                      title: 'yh yh',
                      light: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: const EventBottomNav(),
    );
  }
}
