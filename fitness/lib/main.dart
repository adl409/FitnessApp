import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'providers/macro_provider.dart';
import 'provers/workout_provider.dart';
import 'providers/progress_provider.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Multiprovider(
      providers: [
        ChangeNotifierProvider(create: (_) => MacroProvider()),
        ChangeNotifierProvider(create: (_) => WorkoutProvider()),
        ChangeNotifierProvider(create: (_) => ProgressProvider()),
      ],
      child: MaterialApp(
        title: 'Fitness Tracker',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomePage(),
      ),
    );
  }
}


