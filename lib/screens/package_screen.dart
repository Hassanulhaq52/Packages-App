// import 'package:flutter/material.dart';
//
// class PackageScreen extends StatelessWidget {
//   const PackageScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Package Screen'),
//       ),
//       body: const Center(
//         child: Text('Package Screen Content'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../widgets/package_card.dart';

class PackageScreen extends StatelessWidget {
  const PackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Package',
            style: TextStyle(
              color: Colors.lightBlueAccent.shade400,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.lightBlueAccent.shade400,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.table_rows_rounded,
              color: Colors.lightBlueAccent.shade400,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.only(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PackageCard(
              image: 'images/t_shirt.png',
              title: '5 T-Shirts Dry and Cleaning (\$60)',
            ),
            PackageCard(
              image: 'images/jeans_shirt.PNG',
              title: 'Shirt Jeans slip Dry and Cleaning (\$40)',
            ),
            PackageCard(
              image: 'images/jeans.png',
              title: '5 Jeans Dry and Cleaning (\$80)',
            ),
            PackageCard(
              image: 'images/uniform.png',
              title: '2 Uniform Dry and Cleaning (\$50)',
            ),
            PackageCard(
              image: 'images/linen.png',
              title: '2 Linen Dry and Cleaning (\$80)',
            ),
          ],
        ),
      ),
    );
  }
}
