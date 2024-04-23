import 'package:flutter/material.dart';
import 'package:fapp/components/footer.dart';
import 'package:fapp/components/header.dart';

class AchievementsPage extends StatelessWidget {
  final String title; // Here defined title as a class variable

  AchievementsPage(
      {required this.title}); // Here Constructor to accept the title

  // Here is the dummy data for representing achievements
  final List<Map<String, dynamic>> achievements = [
    {
      'name': 'Improve 2024 April profit',
      'target': '250,000 LKR',
      'achievement': '25,000 LKR',
    },
    {
      'name': 'Improve 2024 April profit',
      'target': '250,000 LKR',
      'achievement': '25,000 LKR',
    },
    {
      'name': 'Improve 2024 April profit',
      'target': '250,000 LKR',
      'achievement': '25,000 LKR',
    },
    {
      'name': 'Improve 2024 April profit',
      'target': '250,000 LKR',
      'achievement': '25,000 LKR',
    },
    {
      'name': 'Improve 2024 April profit',
      'target': '250,000 LKR',
      'achievement': '25,000 LKR',
    },
    {
      'name': 'Improve 2024 April profit',
      'target': '250,000 LKR',
      'achievement': '25,000 LKR',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Header(title: 'Achievements'),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: achievements.length,
                    itemBuilder: (context, index) {
                      final achievement = achievements[index];
                      return Container(
                        padding: EdgeInsets.all(12),
                        margin: EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 240, 232, 232),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 240, 232, 232),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  achievement['name'],
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.flag,
                                      size: 13,
                                      color: Color.fromARGB(255, 56, 166, 230),
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      'Target: ${achievement['target']}',
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.emoji_events,
                                  size: 10,
                                  color: Color.fromARGB(255, 239, 99, 74),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Achievement: ${achievement['achievement']}',
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Footer(onAddPressed: () {
            TextEditingController titleController = TextEditingController();
            TextEditingController valueController = TextEditingController();

            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Add New Achievement',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            Navigator.pop(context); // Close the modal
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Title',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 9),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Improve 2024 April profit',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Target',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 9),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '250,000 LKR',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Achievement',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 9),
                    SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Achievement',
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context); // Close the modal
                        },
                        child: Text('Save'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              TextStyle(fontSize: 18)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              Size(double.infinity, 50)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
