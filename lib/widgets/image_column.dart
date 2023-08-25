import 'package:flutter/material.dart';

import '../utils/styles.dart';

class ImageColumn extends StatelessWidget {
  const ImageColumn({
    super.key,
    required this.image,
    required this.imageCategory,
  });

  final String image;
  final String imageCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.lightBlue.shade200,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.white54, width: 2),
          ),
          child: Image.asset(image, height: 40),
        ),
        const SizedBox(height: 5),
        Text(
          imageCategory,
          style: Styles.subtitleStyle,
        )
      ],
    );
  }
}
