import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;

  Header({required this.title});

  @override
  Widget build(BuildContext context) {
    String headerText;
    if (title == 'Dashboard') {
      headerText = 'Goal Pulse';
    } else if (title == 'Targets') {
      headerText = 'Targets';
    } else {
      headerText = 'Achievements';
    }
    return Container(
      height: 60,
      color: Color.fromARGB(255, 239, 99, 74),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white, size: 18),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/login/dashboard', // Route to the dashboard
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  headerText,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/login', // Route to the login page
                (route) => false,
              ); // Remove all existing routes from the stack then
            },
          ),
        ],
      ),
    );
  }
}
