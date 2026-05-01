import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/splash_screen.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geolore',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/', //Splash screen first
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/welcome': (context) => const WelcomePage(),
        '/origin': (context) => const OriginPage(),
        '/home': (context) => const HomePage(),
        '/your_culture': (context) => const CulturePage(),
        '/history': (context) => const HistoryPage(),
        '/languages': (context) => const LanguagePage(),
        '/teacher': (context) => const TeacherPage(),
      },
    );
  }
}
