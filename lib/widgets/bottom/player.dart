import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/body/4recommended/row_of_recommendations.dart';
import 'package:spotify_flutter_web/widgets/body/5footer/row_of_footer.dart';
import 'package:spotify_flutter_web/widgets/bottom/middle_player/play_line.dart';

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
            // Picture + Song + 2 Icons
            PictureTextIconsRow(),

            // Middle Player
            Column(
              children: [
                // Player Icons
                MiddlePlayerIconsRow(),
                SizedBox(height: 5),

                // Song Duration
                SongDurationRow(),
              ],
            ),

            // Far Right Icons
            FarRightIcons(),
          ],
        ),
      ),
    );
  }
}

class FarRightIcons extends StatelessWidget {
  const FarRightIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MiddlePlayerIcons(
          myIcon: FontAwesome.microphone,
        ),
        kMidWidth,
        MiddlePlayerIcons(
          myIcon: FontAwesome.bars,
        ),
        kMidWidth,
        MiddlePlayerIcons(
          myIcon: FontAwesome.laptop,
        ),
        kMidWidth,
        MiddlePlayerIcons(
          myIcon: FontAwesome.volume_up,
        ),
        kMidWidth,
        CustomLineWidth(lineWidth: 100),
        kMidWidth,
        MiddlePlayerIcons(
          myIcon: FontAwesome.arrows_alt,
        ),
      ],
    );
  }
}

class MiddlePlayerIconsRow extends StatelessWidget {
  const MiddlePlayerIconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MiddlePlayerIcons(
          myIcon: FontAwesome.random,
        ),
        kMidWidth,
        MiddlePlayerIcons(
          myIcon: FontAwesome.step_backward,
        ),
        kMidWidth,
        PlayerIconContainer(),
        kMidWidth,
        MiddlePlayerIcons(
          myIcon: FontAwesome.step_forward,
        ),
        kMidWidth,
        MiddlePlayerIcons(
          myIcon: FontAwesome.repeat,
        ),
      ],
    );
  }
}

class SongDurationRow extends StatelessWidget {
  const SongDurationRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        TextMiddlePlayer(
          lebo: "1:33",
        ),
        kWidthRow,
        CustomLineWidth(
          lineWidth: 300,
        ),
        kWidthRow,
        TextMiddlePlayer(lebo: "6:30")
      ],
    );
  }
}

class CustomLineWidth extends StatelessWidget {
  const CustomLineWidth({
    super.key,
    required this.lineWidth,
  });

  final int lineWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: lineWidth.toDouble(),
      child: LineWidget(),
    );
  }
}

class PlayerIconContainer extends StatelessWidget {
  const PlayerIconContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: kTextColor,
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 5.0),
        child: Icon(
          FontAwesome.play,
          color: kMusicBackground3,
          size: 22,
        ),
      ),
    );
  }
}

class TextMiddlePlayer extends StatelessWidget {
  const TextMiddlePlayer({
    super.key,
    required this.lebo,
  });

  final String lebo;

  @override
  Widget build(BuildContext context) {
    return Text(
      lebo,
      style: const TextStyle(
        color: kTextMinorColor,
      ),
    );
  }
}

class MiddlePlayerIcons extends StatelessWidget {
  const MiddlePlayerIcons({
    super.key,
    required this.myIcon,
  });

  final IconData myIcon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      myIcon,
      color: kIconNotSelected,
      size: 15,
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
