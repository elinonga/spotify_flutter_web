import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';

class MiddleSidebarContainer extends StatelessWidget {
  const MiddleSidebarContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        top: 10.0,
        bottom: 10.0,
      ),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kColumnCardsColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          border: Border.all(
            color: kColumnCardsColor,
            width: 2.0,
          ),
        ),
        child: const Text(
          "Middle",
          style: TextStyle(
            color: kTextMinorColor,
          ),
        ),
      ),
    );
  }
}