import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_app/providers/auth_provider.dart';
import 'package:youtube_app/providers/video_provider.dart';
import 'package:youtube_app/screens/home_screen.dart';
import 'package:youtube_app/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => VideoProvider()),
      ],
      child: MaterialApp(
          title: "Youtube app",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: Colors.redAccent,
              scaffoldBackgroundColor: Colors.white),
          home: Consumer<AuthProvider>(builder: (context, authProvider, child) {
            return authProvider.isAuthenticated
                ? const HomeScreen()
                : const LoginScreen();
          })),
    );
  }
}
