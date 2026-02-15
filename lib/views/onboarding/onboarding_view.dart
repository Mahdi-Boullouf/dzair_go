import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Dzairgo", style: TextStyle(fontSize: 40))),
          SizedBox(height: 8),
          Text("Welcome to our travling app"),
        ],
      ),
    );
  }
}
