import 'package:flutter/material.dart';

class PlayerBottomBar extends StatefulWidget {
  const PlayerBottomBar({super.key});

  @override
  State<PlayerBottomBar> createState() => _PlayerBottomBarState();
}

class _PlayerBottomBarState extends State<PlayerBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "La kwanza",
          ),
          Text(
            "La pili",
          ),
          Text(
            "La tatu",
          ),
        ],
      ),
    );
  }
}
