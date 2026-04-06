import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xf5f5f5f5),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //image goes here
              const SizedBox(height: 70),
              Image.asset('assets/logo.png', height: 400),
              const SizedBox(height: 20),
              Text(
                'GeoLore',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 78, 48, 37),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Text(
                  '   Here at GeoLore we organize your day'
                  ' to day activities. Ensuring you go about your '
                  'daily schedules with ease.',
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/origin');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(
                      248,
                      252,
                      131,
                      50,
                    ), //button color
                    foregroundColor: Colors.white, //text color
                    padding: EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'GetStarted',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
