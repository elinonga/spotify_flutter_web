import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';

class PlayerBottomBar extends StatefulWidget {
  const PlayerBottomBar({super.key});

  @override
  State<PlayerBottomBar> createState() => _PlayerBottomBarState();
}

class _PlayerBottomBarState extends State<PlayerBottomBar> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "La kwanza",
              style: TextStyle(
                color: kTextColor,
              ),
            ),
            Text(
              "La pili",
              style: TextStyle(
                color: kTextColor,
              ),
            ),
            Text(
              "La tatu",
              style: TextStyle(
                color: kTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
