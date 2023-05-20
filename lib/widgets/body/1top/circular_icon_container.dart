import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';

class CircularIconContainer extends StatelessWidget {
  const CircularIconContainer({
    super.key,
    this.myIcon,
  });

  final IconData? myIcon;

  @override
  Widget build(BuildContext context) {
    // Set padding for the icons, to appear centered correctly in the container
    EdgeInsets padding;
    if (myIcon == Icons.arrow_back_ios) {
      padding = const EdgeInsets.only(left: 8.0);
    } else if (myIcon == Icons.arrow_forward_ios) {
      padding = const EdgeInsets.only(left: 2.0);
    } else {
      padding = EdgeInsets.zero;
    }

    return Container(
      alignment: Alignment.center,
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: kCircularContainerColor,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: padding, // Adjust the padding as needed
          child: Icon(
            myIcon,
            color: Colors.white,
            size: 22,
          ),
        ),
      ),
    );
  }
}
