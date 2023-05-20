import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/widgets/body/1top/circular_icon_container.dart';
import 'package:spotify_flutter_web/widgets/body/1top/icon_text_container.dart';

class BuildTopIconsRow extends StatelessWidget {
  const BuildTopIconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Left Icons
        Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Row(
            children: [
              CircularIconContainer(
                myIcon: Icons.arrow_back_ios,
              ),
              SizedBox(width: 15),
              CircularIconContainer(
                myIcon: Icons.arrow_forward_ios,
              ),
            ],
          ),
        ),

        // Right container
        Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: Row(
            children: [
              IconTextContainer(),
              SizedBox(width: 15),
              CircularIconContainer(
                myIcon: Icons.person,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
