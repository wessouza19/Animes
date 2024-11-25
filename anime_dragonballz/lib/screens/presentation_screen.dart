import 'package:anime_dragonballz/widgets/carousel_items.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PresentationScreen extends StatelessWidget {
  const PresentationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 0, 1),
        body: Center(
            child: SafeArea(
          child: CarouselSlider(
            items: [
              CarouselItems(imagePath: 'Goku.png', title: "Conheça o Goku"),
              CarouselItems(imagePath: 'Vedita.png', title: "Conheça o Vedita"),
              CarouselItems(
                  imagePath: 'Piccolo.png', title: "Conheça o Piccolo")
            ],
            options: CarouselOptions(
                height: 800,
                aspectRatio: 1,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(seconds: 1),
                autoPlayCurve: Curves.easeInOutBack),
          ),
        )));
  }
}
