import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/body/4recommended/row_of_recommendations.dart';
import 'package:spotify_flutter_web/widgets/body/5footer/row_of_footer.dart';

class SongsTableData extends StatelessWidget {
  const SongsTableData({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Column(
        children: [
          // Table Title
          Row(
            children: [
              // Text (# + Title)
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.red,
                  child: const Row(
                    children: [
                      FooterMinorText(lebo: "#"),
                      FooterMinorText(lebo: "Title"),
                    ],
                  ),
                ),
              ),

              // Text (Album + Date Added) + Clock Icon
              Expanded(
                flex: 6,
                child: Container(
                  color: Colors.pink,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FooterMinorText(lebo: "Album"),
                      FooterMinorText(lebo: "Date Added"),
                      Icon(
                        FontAwesome.clock_o,
                        color: kIconNotSelected,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(color: kIconNotSelected),

          // Table content (songs)
          const SongsTableRow(),
        ],
      ),
    );
  }
}

class SongsTableRow extends StatelessWidget {
  const SongsTableRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Text (# + Title)
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.transparent,
            child: const Row(
              children: [
                FooterMinorText(lebo: "1"),
                ImageContainerTextRow(
                  imgUrl: "assets/images/artists/joel.jpg",
                  songName: "Sitabaki kama Nilivyo",
                  artistName: "Joel Lwaga",
                ),
              ],
            ),
          ),
        ),

        // Text (Album + Date Added) + Clock Icon
        Expanded(
          flex: 6,
          child: Container(
            color: Colors.yellow,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FooterMinorText(lebo: "The Promised Revival"),
                FooterMinorText(lebo: "Apr 21, 2022"),
                FooterMinorText(lebo: "6:56"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
