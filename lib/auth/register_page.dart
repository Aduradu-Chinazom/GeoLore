import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:geo_lore/services/firestore_service.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isStepTwo = false;

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController confirmEmailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
  TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    confirmEmailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  Future<void> registerUser() async {
    if (firstNameController.text.trim().isEmpty ||
        lastNameController.text.trim().isEmpty) {
      showError("Please enter your full name");
      return;
    }

    if (emailController.text.trim() != confirmEmailController.text.trim()) {
      showError("Emails do not match");
      return;
    }

    if (usernameController.text.trim().isEmpty) {
      showError("Please enter a username");
      return;
    }

    if (passwordController.text != confirmPasswordController.text) {
      showError("Passwords do not match");
      return;
    }

    if (passwordController.text.length < 6) {
      showError("Password must be at least 6 characters");
      return;
    }

    try {
      final UserCredential userCredential =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      final String uid = userCredential.user!.uid;

      await FirestoreService.createUser(
        uid: uid,
        firstName: firstNameController.text.trim(),
        lastName: lastNameController.text.trim(),
        username: usernameController.text.trim(),
        email: emailController.text.trim(),
      );

      if (mounted) {
        Navigator.pushNamed(context, '/welcome');
      }
    } on FirebaseAuthException catch (e) {
      showError(e.message ?? "Registration failed");
    } catch (e) {
      showError(e.toString());
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return;

      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);

      if (userCredential.additionalUserInfo?.isNewUser == true) {
        await FirestoreService.createUser(
          uid: userCredential.user!.uid,
          firstName:
          userCredential.user?.displayName?.split(' ').first ?? '',
          lastName:
          userCredential.user?.displayName?.split(' ').last ?? '',
          username: '',
          email: userCredential.user?.email ?? '',
        );
      }

      if (mounted) {
        Navigator.pushNamed(context, '/welcome');
      }
    } on FirebaseAuthException catch (e) {
      showError(e.message ?? "Google Sign-In failed");
    } catch (e) {
      showError(e.toString());
    }
  }

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
                Image.asset(
                  'assets/Charming chibi tiger cub.png',
                  height: 150,
                ),
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

  Widget buildStepOne() {
    return Column(
      key: const ValueKey(1),
      children: [
        TextField(
          controller: firstNameController,
          decoration: InputDecoration(
            labelText: 'First Name',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          controller: lastNameController,
          decoration: InputDecoration(
            labelText: 'Last Name',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          autocorrect: false,
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          autocorrect: false,
          controller: confirmEmailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Confirm Email',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              if (firstNameController.text.trim().isEmpty ||
                  lastNameController.text.trim().isEmpty) {
                showError("Please enter your full name");
                return;
              }
              if (emailController.text.trim() !=
                  confirmEmailController.text.trim()) {
                showError("Emails do not match");
                return;
              }
              setState(() => isStepTwo = true);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(248, 252, 131, 50),
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
          onPressed: signInWithGoogle,
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Already have an account? ',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/login'),
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
        const SizedBox(height: 20),
      ],
    );
  }

  Widget buildStepTwo() {
    return Column(
      key: const ValueKey(2),
      children: [
        TextField(
          controller: usernameController,
          decoration: InputDecoration(
            labelText: 'Username',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          controller: passwordController,
          autocorrect: false,
          enableSuggestions: false,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 20),
        TextField(
          controller: confirmPasswordController,
          autocorrect: false,
          enableSuggestions: false,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Confirm Password',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: registerUser,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(248, 252, 131, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Register',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
        const SizedBox(height: 15),
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
          onPressed: signInWithGoogle,
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Already have an account? ',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/login'),
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
        const SizedBox(height: 20),
      ],
    );
  }
}