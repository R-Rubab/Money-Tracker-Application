import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../models/percentage.dart';

class CircleProgressChart extends StatefulWidget {
  const CircleProgressChart({super.key});

  @override
  State<CircleProgressChart> createState() => _CircleProgressChartState();
}

class _CircleProgressChartState extends State<CircleProgressChart> {
  final List<Percentage> percentage = PercentageList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: percentage.length,
        itemBuilder: (context, index) {
          final percentList = percentage[index];
          return Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.symmetric(horizontal:4),
            width: 90,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 3, color: Colors.pink.withOpacity(.2)),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 6,
                ),
                CircularPercentIndicator(
                  radius: 25,
                  lineWidth: 5,
                  percent: percentList.percent / 100,
                  backgroundColor: Colors.pink.shade200,
                  progressColor: Colors.purple,
                  backgroundWidth: 1,
                  center: Text(
                    "${percentList.percent}%",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  percentList.categories,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  style: const TextStyle(
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Text(
                  "\$${percentList.price}",
                  style: const TextStyle(
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
