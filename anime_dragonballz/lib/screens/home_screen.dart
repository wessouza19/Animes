import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double opacityImage = 0;

  @override
  void initState() {
    awaitToShow();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 0, 1),
      body: Center(
        child: SafeArea(
            child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 150),
              child: Text(
                'Nada de Pokedex mais',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const Text(
              'Api do DragonBall',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Stack(
              children: [
                Image.asset('assets/images/DragonBall1.png'),
                AnimatedOpacity(
                    duration: const Duration(milliseconds: 1500),
                    opacity: opacityImage,
                    curve: Curves.fastOutSlowIn,
                    child: Image.asset('assets/images/DragonBall2.png')),
              ],
            )
          ],
        )),
      ),
    );
  }

  awaitToShow() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    setState(() {
      opacityImage = 1;
    });
  }
}
