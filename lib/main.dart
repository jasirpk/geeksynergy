import 'package:flutter/material.dart';
import 'package:geeksynergy/shoe_detail.dart';

void main() {
  runApp(GeeksyNergy());
}

class GeeksyNergy extends StatelessWidget {
  const GeeksyNergy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoeDetailScreen(),
    );
  }
}
