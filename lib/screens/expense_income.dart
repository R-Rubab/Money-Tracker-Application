import 'package:flutter/material.dart';

class ExpenseIncomeData extends StatefulWidget {
  const ExpenseIncomeData({super.key});

  @override
  State<ExpenseIncomeData> createState() => _ExpenseIncomeDataState();
}

class _ExpenseIncomeDataState extends State<ExpenseIncomeData> {
  final List itemList = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  String? selectedValue = "August";
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 250,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 280,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Day",
                          style: TextStyle(    letterSpacing: 1.5,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Week",
                          style: TextStyle(    letterSpacing: 1.5,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Month",
                          style: TextStyle(    letterSpacing: 1.5,
                            color: Colors.pink,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      height: 35,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          value: selectedValue,
                          dropdownColor: Colors.black,
                          items:
                              itemList.map<DropdownMenuItem<String>>((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: expenseIncomeContainer(
                      context,
                      Icons.arrow_upward,
                      "Expense",
                      7100.00,
                      Colors.pink.withOpacity(.6),
                      Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: expenseIncomeContainer(
                      context,
                      Icons.arrow_downward,
                      "Income",
                      3100.00,
                      Colors.white.withOpacity(.9),
                      Colors.pink,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget expenseIncomeContainer(BuildContext context, IconData icon,
      String text, double price, Color color, Color textColor) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(width: 3, color: color),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              color: textColor,
            ),
          ),
          Column(
            children: [
              Text(
                text,
                style: TextStyle(
                    color: textColor,
                    fontSize: 15,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "\$$price",
                style: TextStyle(
                  color: textColor,
                  fontSize: 17,    letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
