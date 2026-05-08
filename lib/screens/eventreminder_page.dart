import 'package:flutter/material.dart';
import 'package:geo_lore/Widget/eventscomponents.dart';

class EventReminderPage extends StatelessWidget {
  const EventReminderPage({super.key});

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

              const SizedBox(height: 24),

              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD89B67),
                    borderRadius: BorderRadius.circular(18),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        decoration: const BoxDecoration(
                          color: Color(0xFF562F00),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(18),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'ADD EVENT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const EventField(
                                title: 'Event name',
                                subtitle: 'Description',
                              ),

                              const SizedBox(height: 14),

                              const EventField(title: 'Date'),

                              const SizedBox(height: 14),

                              const EventField(title: 'Time'),

                              const SizedBox(height: 14),

                              const EventField(title: 'Add end time'),

                              const SizedBox(height: 14),

                              const EventField(title: 'Add location'),

                              const SizedBox(height: 14),

                              const EventField(
                                title: 'Reminder',
                                subtitle: 'Daily',
                              ),

                              const SizedBox(height: 18),

                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFB07A4B),
                                  borderRadius: BorderRadius.circular(14),
                                ),

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Center(
                                      child: Text(
                                        'Guests also get notified',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 14),

                                    ReminderOption(
                                      text: 'Daily',
                                      selected: true,
                                    ),

                                    ReminderOption(text: '1 hour before'),

                                    ReminderOption(text: '30 minutes before'),

                                    ReminderOption(text: '1 day before'),

                                    ReminderOption(text: 'Never'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
