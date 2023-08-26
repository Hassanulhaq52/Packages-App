import 'package:flutter/material.dart';

class TimeSlotButton extends StatefulWidget {
  final String time;

  TimeSlotButton({required this.time});

  @override
  _TimeSlotButtonState createState() => _TimeSlotButtonState();
}

class _TimeSlotButtonState extends State<TimeSlotButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 95,
      child: ElevatedButton(

        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        style: ElevatedButton.styleFrom(
          primary: isSelected ? Colors.blue : Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        child: Text(
          widget.time,
          style: TextStyle(
            fontSize: 10,
            color: isSelected ? Colors.white : Colors.grey, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
