import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random(); // To avoid redundant instances of Random ⚠️

class ImageAndButton extends StatefulWidget {
  const ImageAndButton({Key? key}) : super(key: key);

  @override
  _ImageAndButtonState createState() => _ImageAndButtonState();
}

class _ImageAndButtonState extends State<ImageAndButton> {

  int diceNumber = 1;

  void rollDice() {
    // 🌟🌟🌟 setState() triggers a rebuild of the widget 🌟🌟🌟
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1; // generates a random number between 1 and 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/images/dice-$diceNumber.png',
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          child: const Text('Press me'),
        ),
      ],
    );
  }
}