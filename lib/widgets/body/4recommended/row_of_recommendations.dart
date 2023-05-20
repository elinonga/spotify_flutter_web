import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/body/4recommended/1recommend_text_header.dart';
import 'package:spotify_flutter_web/widgets/sidebar/middle/middle_sidebar.dart';

class RowOfRecommendations extends StatelessWidget {
  const RowOfRecommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // 1st Row
        Row(
          children: [
            // Image
            ImageContainerRecommended(),
            SizedBox(width: 10),

            // Column of Texts
            ArtistsTextColumn(),
          ],
        ),

        // 2nd Row
        Row(
          children: [
            // Artist's Album
            RecommendationText(
              label: "Joyous Celebration, Vol.16",
              size: 15,
              rangi: kTextMinorColor,
            ),
            SizedBox(width: 88),

            // Circular Container + Text (Add)
            CircularContainerMiddleSidebar(
              lebo: "Add",
            )
          ],
        ),

        //
      ],
    );
  }
}

class ImageContainerRecommended extends StatelessWidget {
  const ImageContainerRecommended({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12.0),
      color: Colors.red,
      height: 50,
      width: 50,
      child: const Image(
        image: AssetImage(
          "assets/images/artists/joel.jpg",
        ),
      ),
    );
  }
}

class ArtistsTextColumn extends StatelessWidget {
  const ArtistsTextColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Forward We Go - Live",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: kTextColor,
          ),
        ),
        SizedBox(height: 7),
        Text(
          "Joyous Celebration",
          style: TextStyle(
            fontSize: 12,
            color: kTextMinorColor,
          ),
        ),
      ],
    );
  }
}
