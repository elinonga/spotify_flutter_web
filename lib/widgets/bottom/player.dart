import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/body/4recommended/row_of_recommendations.dart';

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
            PictureTextIconsRow(),
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

class PictureTextIconsRow extends StatelessWidget {
  const PictureTextIconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.red,
          height: 50,
          width: 50,
          child: const Image(
            image: AssetImage(
              "assets/images/songs/deborah.jpeg",
            ),
          ),
        ),
        kMidWidth,
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: ArtistsTextColumn(
            songName: "Ma consolation",
            artistName: "Deborah Lukalu",
          ),
        ),
        kMidWidth,
        const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: Icon(
            FontAwesome.heart_o,
            color: kIconNotSelected,
            size: 15,
          ),
        ),
        kMidWidth,
        const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: Icon(
            FontAwesome.picture_o,
            color: kIconNotSelected,
            size: 15,
          ),
        ),
      ],
    );
  }
}
