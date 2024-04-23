import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final Function()? onAddPressed;

  Footer({this.onAddPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Color.fromARGB(255, 239, 99, 74),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.emoji_events,
                  color: Colors.white,
                  size: 17,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login/dashboard/achievements');
                },
              ),
              Text(
                'Achievements',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
                  size: 43,
                ),
                onPressed: onAddPressed,
              ),
            ],
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.flag,
                  color: Colors.white,
                  size: 17,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login/dashboard/targets');
                },
              ),
              Text(
                'Targets',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
