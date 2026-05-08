import 'package:flutter/material.dart';
import 'package:geo_lore/Widget/eventscomponents.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({super.key});

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
                child: Center(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD89B67),
                      borderRadius: BorderRadius.circular(18),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Zomie’s\nBirthday",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        const SizedBox(height: 26),

                        const EventInfoText('Monday'),

                        const SizedBox(height: 14),

                        const EventInfoText('20th April 2026'),

                        const SizedBox(height: 14),

                        const EventInfoText('10:00am - 2:00pm'),

                        const SizedBox(height: 18),

                        const Text(
                          'Venue',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 10),

                        const Text(
                          'You Moms house\npapa’s street\nhouse 419',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),

                        const Spacer(),

                        Center(
                          child: Container(
                            width: 120,
                            height: 44,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFF9644),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black),
                            ),
                            child: const Center(
                              child: Text(
                                'Close',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
