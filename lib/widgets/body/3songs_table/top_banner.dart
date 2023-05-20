import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/body/1top/build_top_icon.dart';
import 'package:spotify_flutter_web/widgets/body/2middle/image_text.dart';

class BannerBodyContainer extends StatelessWidget {
  const BannerBodyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            kBannerColor1,
            kBannerColor2,
            kBannerColor3,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
        ),
        border: Border.all(
          color: kBannerColor3,
        ),
      ),
      child: const Column(
        children: [
          SizedBox(height: 12.0),

          // Top Icons (Install app + User Icon)
          BuildTopIconsRow(),
          SizedBox(height: 15),

          // Text + Image
          Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: MiddleTextImageContainer(),
          ),

          SizedBox(height: 15),
        ],
      ),
    );
  }
}
