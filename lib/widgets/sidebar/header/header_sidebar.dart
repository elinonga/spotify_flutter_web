import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';

class SidebarHeaderContainer extends StatelessWidget {
  const SidebarHeaderContainer({
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
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeaderIconText(
              myIcon: Icons.home,
              label: "Home",
            ),
            HeaderIconText(
              myIcon: Icons.search,
              label: "Search",
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderIconText extends StatelessWidget {
  const HeaderIconText({
    super.key,
    required this.myIcon,
    required this.label,
  });

  final IconData myIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Row(
        children: [
          Icon(
            myIcon,
            color: kIconNotSelected,
          ),
          SizedBox(width: 15),
          Text(
            label,
            style: TextStyle(
              color: kTextMinorColor,
            ),
          ),
        ],
      ),
    );
  }
}
