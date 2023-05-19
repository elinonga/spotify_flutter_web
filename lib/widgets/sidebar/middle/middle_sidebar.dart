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
      ),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kColumnCardsColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10.0),
            topLeft: Radius.circular(10.0),
          ),
          border: Border.all(
            color: kColumnCardsColor,
            width: 2.0,
          ),
        ),
        child: MiddleContainer(),
      ),
    );
  }
}

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Row of "Your Library"
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.home,
                    color: kIconNotSelected,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Your Library",
                    style: TextStyle(
                      color: kTextMinorColor,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.add,
                    color: kIconNotSelected,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.arrow_forward,
                    color: kIconNotSelected,
                  ),
                ],
              ),
            ],
          ),
        ),

        // Row of circular containers
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 12),
              CircularContainerMiddleSidebar(
                lebo: "Playlists",
              ),
              SizedBox(width: 12),
              CircularContainerMiddleSidebar(
                lebo: "Artists",
              ),
              SizedBox(width: 12),
              CircularContainerMiddleSidebar(
                lebo: "Albums",
              ),
              SizedBox(width: 12),
              CircularContainerMiddleSidebar(
                lebo: "Podcasts",
              ),
              SizedBox(width: 12),
              CircularContainerMiddleSidebar(
                lebo: "Motivation",
              ),
              SizedBox(width: 12),
            ],
          ),
        ),
      ],
    );
  }
}

class CircularContainerMiddleSidebar extends StatelessWidget {
  const CircularContainerMiddleSidebar({
    super.key,
    required this.lebo,
  });

  final String lebo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kCircularContainerColor,
        border: Border.all(
          color: kColumnCardsColor,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          lebo,
          style: const TextStyle(
            color: kTextColor,
          ),
        ),
      ),
    );
  }
}
