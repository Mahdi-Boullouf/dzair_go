import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(body: Column(children: [

    

    ],));
=======
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
>>>>>>> 53cf785c2b9b8caf67adf5b3cfd70ea6a8f441a0
  }
}
