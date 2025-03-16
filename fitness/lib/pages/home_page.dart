import 'package:flutter/material.dart';
import 'macros_page.dart';
import 'workout_page.dart';
import 'progress_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fitness Tracker')),
      body: Center(child: Text('Welcome to your Fitness App!')),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Macros'),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Workouts'),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: 'Progress'),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MacrosPage()));
          } else if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => WorkoutPage()));
          } else {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProgressPage()));
          }
        },
      ),
    );
  }
}
