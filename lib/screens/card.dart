import 'package:cypto_app/screens/expense_graph.dart';
import 'package:flutter/material.dart';

class VisaCardDesign extends StatefulWidget {
  const VisaCardDesign({super.key});

  @override
  State<VisaCardDesign> createState() => _VisaCardDesignState();
}

class _VisaCardDesignState extends State<VisaCardDesign> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: const ExpenseGraphDesign(
                  height: 140,
                )),
          ),
          Container(
            height: 160,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                colors: [
                  Colors.purple.withOpacity(.85),
                  Colors.pink.withOpacity(.85),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Donald Duck",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "**** **** ****",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(width: 7),
                    Text(
                      "9877",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Text(
                          "Total Balance",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "\$ 4,500.50",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 28,
                      width: 50,
                      child: Text(
                        "visa".toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Positioned(
            top: 80,
            left: 20,
            child: Text(
              "07/25",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
              bottom: 6,
              right: 12,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  // color: Colors.white.withOpacity(.1),
                  // boxShadow: const [],
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.pink.withOpacity(.4),
                      Colors.purple.withOpacity(.3),
                    ],
                  ),
                  border: Border.all(width: 3, color: Colors.pink.shade300),
                ),
              )),
       
          Positioned(
              top: 10,
              right: 10,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.pink.withOpacity(.5),
              
                  borderRadius: BorderRadius.circular(30),
              
                  border: Border.all(width: 3, color: Colors.pink.withOpacity(.5)),
                ),
              )),
          Positioned(
              top: 20,
              right: 20,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.purple.withOpacity(.5),
              
                  borderRadius: BorderRadius.circular(30),
              
                  border: Border.all(width: 3, color: Colors.pink.withOpacity(.5)),
                ),
              )),
       
        ],
      ),
    );
  }
}
