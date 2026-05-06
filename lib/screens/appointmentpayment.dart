import 'package:flutter/material.dart';

class AppointmentPaymentPage extends StatelessWidget {
  final String date;
  final String time;
  final String price;
  const AppointmentPaymentPage({
    super.key,
    required this.date,
    required this.time,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),

              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/string_flags.png',
                    width: 150,
                    height: 130,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.person, color: Color(0xFF562F00)),
                      SizedBox(width: 10),
                      Icon(Icons.notifications, color: Color(0xFF562F00)),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 10),

              const Text(
                "BOOK APPOINTMENT",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF562F00),
                ),
              ),

              const SizedBox(height: 20),

              _buildField(date),
              _buildField(time),
              _buildField(price),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF9644),
                  ),
                  child: const Text("Proceed to checkout"),
                ),
              ),

              const SizedBox(height: 10),

              ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: const Text("Back"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF9644),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildField(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(text),
      ),
    );
  }
}
