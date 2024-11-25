import 'package:flutter/material.dart';

class CarouselItems extends StatelessWidget {
  final String imagePath;
  final String title;

  const CarouselItems(
      {super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/carousel/$imagePath'),
        Text(
          title,
          style: const TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
