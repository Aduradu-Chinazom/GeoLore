import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isStepTwo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),

                // Image
                Image.asset('assets/Charming chibi tiger cub.png', height: 150),

                // Animated switch between steps
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  transitionBuilder: (child, animation) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(1, 0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: FadeTransition(opacity: animation, child: child),
                    );
                  },
                  child: isStepTwo ? buildStepTwo() : buildStepOne(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ✅ STEP 1
  Widget buildStepOne() {
    return Column(
      key: const ValueKey(1),
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'First Name',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 20),

        TextField(
          decoration: InputDecoration(
            labelText: 'Last Name',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 20),

        TextField(
          autocorrect: false,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 20),

        TextField(
          autocorrect: false,
          decoration: InputDecoration(
            labelText: 'Confirm Email',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),

        const SizedBox(height: 20),

        // Google Button
        // SignInButton(
        //   Buttons.Google,
        //   text: "Continue with Google",
        //   onPressed: () {},
        // ),

        // const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                isStepTwo = true;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(248, 252, 131, 50),
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Proceed',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),

        //OR
        const Text(
          'OR',
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 56, 56, 56),
          ),
        ),

        const SizedBox(height: 15),

        SignInButton(
          Buttons.Google,
          text: 'Continue with Google',
          onPressed: () {},
        ),
        const SizedBox(height: 15),

        //Already have an account? Login
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Already have an account?',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Color.fromARGB(255, 78, 48, 37),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  //  STEP 2
  Widget buildStepTwo() {
    return Column(
      key: const ValueKey(2),
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Username',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 20),

        TextField(
          obscureText: true,
          autocorrect: false,
          enableSuggestions: false,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 20),

        TextField(
          obscureText: true,
          autocorrect: false,
          enableSuggestions: false,
          decoration: InputDecoration(
            labelText: 'Confirm Password',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),

        const SizedBox(height: 30),

        // Register Button
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/welcome');
              // handle register
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(248, 252, 131, 50),
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Register',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        const SizedBox(height: 10),

        // // Back Button
        // TextButton(
        //   onPressed: () {
        //     setState(() {
        //       isStepTwo = false;
        //     });
        //   },
        //   child: const Text("Back"),
        // ),
        const SizedBox(height: 15),

        //OR
        const Text(
          'OR',
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 56, 56, 56),
          ),
        ),

        const SizedBox(height: 15),

        SignInButton(
          Buttons.Google,
          text: 'Continue with Google',
          onPressed: () {},
        ),
        const SizedBox(height: 15),

        //Already have an account? Login
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Already have an account?',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text(
                'Login',
                style: TextStyle(

                  color: Color.fromARGB(255, 78, 48, 37),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
