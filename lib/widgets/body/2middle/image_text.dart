import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';

class MiddleTextImageContainer extends StatelessWidget {
  const MiddleTextImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // Picture
        SizedBox(
          height: 250,
          child: Image(
            image: AssetImage(
              "assets/images/artists/africa.jpg",
            ),
          ),
        ),
        SizedBox(width: 10),

        // Column content
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 45),
            // Category - Playlist / Artist / Album
            Text(
              "Playlist",
              style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),

            //Name of Playlist
            Text(
              "Africa #1",
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 80,
              ),
            ),
            SizedBox(height: 60),

            // Row (username + # of songs in playlist + muda wa kumaliza playlist)
            Row(
              children: [
                Text(
                  "mezza .",
                  style:
                      TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 2),
                Text(
                  "94 songs",
                  style:
                      TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 2),
                Text(
                  ", about 9 hr",
                  style: TextStyle(
                    color: kTextMinorColor,
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
