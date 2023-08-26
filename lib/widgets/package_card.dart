import 'package:flutter/material.dart';

import '../utils/styles.dart';
import 'image_column.dart';

class PackageCard extends StatelessWidget {
  const PackageCard({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent.shade400,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.white54, width: 2),
            ),
            width: 120,
            height: 140,
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      title,
                      style: Styles.titleStyle,
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'You will get \$10 off buy this package',
                      style: Styles.subtitleStyle,
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                const Row(
                  children: [
                    ImageColumn(
                      image: 'images/wash.png',
                      imageCategory: 'Wash',
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    ImageColumn(
                      image: 'images/dry_cleaning.png',
                      imageCategory: 'Dry Cleaning',
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    ImageColumn(
                      image: 'images/iron.png',
                      imageCategory: 'Iron',
                    ),
                  ],
                ),
                const SizedBox(height: 4.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
