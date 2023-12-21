import 'package:flutter/material.dart';
import 'image_and_button.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: startAligment,
            end: endAligment,
            colors: colors,
          ),
        ),
        child: ImageAndButton(),
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Stack(
  //     children: [
  //       Container(
  //         decoration: BoxDecoration(
  //           gradient: LinearGradient(
  //             begin: startAligment,
  //             end: endAligment,
  //             colors: colors,
  //           ),
  //         ),
  //       ),
  //       Center(
  //         child: ImageAndButton(),
  //         )
  //     ],
  //   );
  // }
}
