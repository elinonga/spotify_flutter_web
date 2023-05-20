import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';

class IconTextContainer extends StatelessWidget {
  const IconTextContainer({
    super.key,
  });

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
      child: const Padding(
        padding: EdgeInsets.only(
          top: 2.0,
          bottom: 2.0,
          left: 8.0,
          right: 8.0,
        ),
        child: Row(
          children: [
            Icon(
              Icons.download_for_offline_rounded,
              color: kIconNotSelected,
            ),
            SizedBox(width: 5),
            Text(
              "Install App",
              style: TextStyle(
                color: kTextColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
