import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDF1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),

            // Logo
            Image.asset('assets/logo.png', width: 250),

            const SizedBox(height: 10),

            const Text(
              "It’s time for your lesson with\nPrincess",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Color(0xFF562F00)),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.call, color: Colors.white),
                ),
                const SizedBox(width: 30),
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.red,
                  child: const Icon(Icons.call_end, color: Colors.white),
                ),
              ],
            ),

            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF9644),
              ),
              child: const Text("DELAY"),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
