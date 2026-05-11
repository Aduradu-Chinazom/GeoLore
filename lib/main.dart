import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:geo_lore/screens/communitygroupspage.dart';
import 'package:geo_lore/main_layout.dart';
import 'package:geo_lore/screens/traditions_page.dart';
import 'firebase_options.dart';
import 'auth/register_page.dart';
import 'auth/login_page.dart';
import 'screens/welcome_page.dart';
import 'screens/origin_page.dart';

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
      home: const AuthGate(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/welcome': (context) => const WelcomePage(),
        '/origin': (context) => const OriginPage(),
        '/main': (context) => const MainLayout(initialIndex: 2),
        //'/community': (context) => const MainLayout(initialIndex: 4),
        '/traditions': (context) => const TraditionsPage(),
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
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        if (snapshot.hasData) {
          return const MainLayout(initialIndex: 4); // Start on Community page
        }

        return const LoginPage();
      },
    );
  }
}