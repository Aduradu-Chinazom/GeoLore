import 'package:flutter/material.dart';
import '../data/app_data.dart';

class OriginPage extends StatefulWidget {
  const OriginPage({super.key});

  @override
  State<OriginPage> createState() => _OriginPageState();
}

class _OriginPageState extends State<OriginPage> {
  String? selectedCountry = AppData.countryOfOrigin.first;
  String? selectedTribe;
  String? selectedLocation;

  final TextEditingController otherTribeController = TextEditingController();

  @override
  void dispose() {
    otherTribeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),

                Center(child: Image.asset('assets/logo.png', height: 150)),

                const SizedBox(height: 40),

                // ✅ COUNTRY OF ORIGIN
                const Text("Country of Origin"),
                const SizedBox(height: 5),

                DropdownButtonFormField<String>(
                  value: selectedCountry,
                  items: AppData.countryOfOrigin.map((country) {
                    return DropdownMenuItem(
                      value: country,
                      child: Text(country),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCountry = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // ✅ TRIBE
                const Text("Tribe"),
                const SizedBox(height: 5),

                DropdownButtonFormField<String>(
                  value: selectedTribe,
                  items: AppData.tribes.map((tribe) {
                    return DropdownMenuItem(value: tribe, child: Text(tribe));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedTribe = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                // ✅ Show textfield ONLY if "Others"
                if (selectedTribe == "Others") ...[
                  const SizedBox(height: 10),
                  TextField(
                    controller: otherTribeController,
                    decoration: InputDecoration(
                      hintText: "Enter your tribe",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],

                const SizedBox(height: 30),

                // ✅ CURRENT LOCATION
                const Text("Current Location"),
                const SizedBox(height: 5),

                DropdownButtonFormField<String>(
                  value: selectedLocation,
                  items: AppData.countries.map((country) {
                    return DropdownMenuItem(
                      value: country,
                      child: Text(country),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedLocation = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // ✅ DONE BUTTON
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      String finalTribe = selectedTribe == "Others"
                          ? otherTribeController.text.trim()
                          : selectedTribe ?? "";

                      if (finalTribe.isEmpty || selectedLocation == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Please fill all fields"),
                          ),
                        );
                        return;
                      }

                      // 👉 You can store this later in Firebase or backend
                      print("Country: $selectedCountry");
                      print("Tribe: $finalTribe");
                      print("Location: $selectedLocation");

                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Text('Done'),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
