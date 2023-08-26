import 'package:flutter/material.dart';

class ContainerColumn extends StatelessWidget {
  final Color color;
  final String weekDay;
  final String date;

  ContainerColumn({
    required this.color,
    required this.weekDay,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              weekDay,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8), // Adjust vertical padding as needed
            alignment: Alignment.center,
            child: Text(
              date,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.bold
                // You can also set other text styles here
              ),
            ),
          ),


        ],
      ),
    );
  }
}