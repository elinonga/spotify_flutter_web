import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';

class PlayIconContainer extends StatelessWidget {
  const PlayIconContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.play_arrow,
        size: 40,
      ),
    );
  }
}
