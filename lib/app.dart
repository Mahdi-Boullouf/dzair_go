<<<<<<< HEAD
import 'package:dzair_go/views/home/home_veiw.dart';
import 'package:dzair_go/views/onboarding/instrest/intrest_view.dart';
=======
import 'package:dzair_go/views/onboarding/onboarding_view.dart';
>>>>>>> 53cf785c2b9b8caf67adf5b3cfd70ea6a8f441a0
import 'package:dzair_go/views/onboarding/onboarding_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [Provider(create: (context) => OnboardingViewmodel())],
<<<<<<< HEAD
        child: HomeVeiw(),
=======
        child: OnboardingView(),
>>>>>>> 53cf785c2b9b8caf67adf5b3cfd70ea6a8f441a0
      ),
    );
  }
}
