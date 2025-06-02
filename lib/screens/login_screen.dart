import 'package:flutter/material.dart';
import '../widgets/y2k_button.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to AI Closet", style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: 40),
            Y2KButton(text: "Continue with Email", onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
            }),
          ],
        ),
      ),
    );
  }
}
