import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: FractionallySizedBox(
                    widthFactor: 0.6,
                    child: Image.asset(
                      '../assets/app_logo.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Flexible(
                  flex: 1,
                  child: Text(
                    'Goal Pulse',
                    style: TextStyle(
                      fontSize: 23,
                      color: Color.fromARGB(255, 239, 99, 74),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            // Here for position the button
            bottom: MediaQuery.of(context).size.height * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
                // Navigate to the login screen when click Login button
              },
              child: Icon(Icons.arrow_forward, color: Colors.white),
              backgroundColor: Color.fromARGB(255, 239, 99, 74),
            ),
          ),
        ],
      ),
    );
  }
}
