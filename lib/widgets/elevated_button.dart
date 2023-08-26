import 'package:flutter/material.dart';

class ElevatedContainer extends StatelessWidget {
  final Color color;
  final Widget child;

  const ElevatedContainer(
      {super.key, required this.color, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(8.0),
      child: child,
    );
  }
}
