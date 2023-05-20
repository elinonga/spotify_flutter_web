import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/body/4recommended/1recommend_text_header.dart';
import 'package:spotify_flutter_web/widgets/sidebar/middle/middle_sidebar.dart';

class RowOfRecommendations extends StatelessWidget {
  final String imgUrl;
  final String songName;
  final String artistName;
  final String albumName;
  const RowOfRecommendations({
    super.key,
    required this.imgUrl,
    required this.songName,
    required this.artistName,
    required this.albumName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // 1st Row
        Row(
          children: [
            // Image
            ImageContainerRecommended(
              imgUrl: imgUrl,
            ),
            const SizedBox(width: 10),

            // Column of Texts
            ArtistsTextColumn(
              songName: songName,
              artistName: artistName,
            ),
          ],
        ),

        // 2nd Row
        Row(
          children: [
            // Artist's Album
            RecommendationText(
              label: albumName,
              size: 15,
              rangi: kTextMinorColor,
            ),
            const SizedBox(width: 88),

            // Circular Container + Text (Add)
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: CircularContainerMiddleSidebar(
                lebo: "Add",
              ),
            )
          ],
        ),

        //
      ],
    );
  }
}

class ImageContainerRecommended extends StatelessWidget {
  final String imgUrl;
  const ImageContainerRecommended({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0),
      color: Colors.red,
      height: 50,
      width: 50,
      child: Image(
        image: AssetImage(
          imgUrl,
        ),
      ),
    );
  }
}

class ArtistsTextColumn extends StatelessWidget {
  final String songName;
  final String artistName;
  const ArtistsTextColumn({
    super.key,
    required this.songName,
    required this.artistName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          songName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: kTextColor,
          ),
        ),
        const SizedBox(height: 7),
        Text(
          artistName,
          style: const TextStyle(
            fontSize: 12,
            color: kTextMinorColor,
          ),
        ),
      ],
    );
  }
}
