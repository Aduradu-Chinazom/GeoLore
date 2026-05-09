import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geo_lore/screens/communitygroupspage.dart';
import 'firebase_options.dart';
import 'auth/register_page.dart';
import 'auth/login_page.dart';
import 'screens/welcome_page.dart';
import 'screens/origin_page.dart';
import 'screens/home.dart';
import 'screens/your_culture.dart';
import 'screens/history.dart';
import 'screens/languages.dart';
import 'screens/teacher.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geolore',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AuthGate(), // ← use home instead of initialRoute
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/welcome': (context) => const WelcomePage(),
        '/origin': (context) => const OriginPage(),
        '/home': (context) => const HomePage(),
        '/your_culture': (context) => const CulturePage(),
        '/history': (context) => const HistoryPage(),
        '/languages': (context) => const LanguagePage(),
        '/teacher': (context) => const TeacherPage(),
        '/community': (context) => const CommunityGroupsPage(),
      },
    );
  }
}

// Checks auth state and routes accordingly
class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // Still loading
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        // Logged in → go to app
        if (snapshot.hasData) {
          return const CommunityGroupsPage();
        }

        // Not logged in → go to login
        return const LoginPage();
      },
    );
  }
}