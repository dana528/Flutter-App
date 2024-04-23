// After logged in user can view this page
import 'package:fapp/components/footer.dart';
import 'package:fapp/components/header.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Set the achieved percentage and remaining percentage here(only for view)
    double achievedPercentage = 10.0;
    double remainingPercentage = 90.0;

    Map<String, double> dataMap = {
      'Achieved': achievedPercentage,
      'Remaining': remainingPercentage,
    };

    List<Color> colorList = [
      Color.fromARGB(255, 239, 99, 74),
      Color.fromRGBO(252, 229, 242, 1)
    ];

    return Scaffold(
      body: Column(
        children: [
          Header(title: 'Dashboard'), // Here Included the Header widget
          SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(252, 229, 242, 1),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Improve 2024 April profit',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
                Icon(Icons.arrow_drop_down,
                    color: Colors.black), // Added Dropdown icon
              ],
            ),
          ),
          SizedBox(height: 70),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width:
                    200, // Here Set a fixed width and Height for the pie chart
                height: 200,
                child: PieChart(
                  dataMap: dataMap,
                  chartType: ChartType.ring,
                  colorList: colorList,
                  initialAngleInDegree: 0,
                  ringStrokeWidth: 17,
                  legendOptions: LegendOptions(showLegends: false),
                  chartValuesOptions: ChartValuesOptions(
                    showChartValues: false,
                    chartValueBackgroundColor: Colors.transparent,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${achievedPercentage.toInt()}%',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Achieved',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Text(
            'Target vs Achievement',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 236, 243, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                // Then Set the color for the Target container
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Icon(Icons.flag, color: Color.fromARGB(255, 56, 166, 230)),
                    Text(
                      'Target',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '250,000 LKR',

                      style: TextStyle(
                          color: Color.fromARGB(255, 56, 166, 230),
                          fontWeight: FontWeight.bold), // Text color
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 236, 243, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Icon(Icons.emoji_events,
                        color: Color.fromARGB(255, 240, 81, 53)),
                    Text(
                      'Achievement',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '25,000 LKR',
                      style: TextStyle(
                        color: Color.fromARGB(255, 239, 99, 74),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Expanded(child: SizedBox()),
          Footer() // Here Included the Footer widget
        ],
      ),
    );
  }
}
