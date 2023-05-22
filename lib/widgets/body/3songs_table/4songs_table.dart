import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/body/4recommended/row_of_recommendations.dart';

class SongsTableData extends StatelessWidget {
  const SongsTableData({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          // Table Title
          Row(
            children: [
              // Text (# + Title)
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.transparent,
                  child: const Row(
                    children: [
                      SongsText(lebo: "#"),
                      kWidthRow,
                      SongsText(lebo: "Title"),
                    ],
                  ),
                ),
              ),

              // Text (Album + Date Added) + Clock Icon
              Expanded(
                flex: 6,
                child: Container(
                  color: Colors.transparent,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SongsText(lebo: "Album"),
                      SongsText(lebo: "Date Added"),
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
          kHeightColumn,
          const Divider(color: kIconNotSelected),
          kHeightColumn,

          // Table content (songs)
          ColumnSongsTable(),
        ],
      ),
    );
  }
}

class ColumnSongsTable extends StatelessWidget {
  const ColumnSongsTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SongsTableRow(
          songID: "1",
          imgUrl: "assets/images/songs/deborah.jpeg",
          songName: "Ma consolation",
          artistName: "Deborah Lukalu",
          albumName: "Mungu wa Maajabu",
          dateAdded: "Apr 21, 2022",
          songDuration: "6:56",
        ),
        SongsTableRow(
          songID: "2",
          imgUrl: "assets/images/songs/jc15.jpeg",
          songName: "Wait on the Lord",
          artistName: "Joyous Celebration",
          albumName: "JC Vol. 15 (My Gift, Live at ICC Arena)",
          dateAdded: "Jan 28, 2011",
          songDuration: "7:17",
        ),
        SongsTableRow(
          songID: "3",
          imgUrl: "assets/images/songs/jc17.jpeg",
          songName: "Zulu Worship Medley",
          artistName: "Joyous Celebration",
          albumName: "JC Vol. 17 (Grateful)",
          dateAdded: "July 11, 2013",
          songDuration: "3:25",
        ),
        SongsTableRow(
          songID: "4",
          imgUrl: "assets/images/songs/jc19.jpeg",
          songName: "Ngino Jesu Medley",
          artistName: "Joyous Celebration",
          albumName: "JC Vol. 19 (Back to the cross)",
          dateAdded: "May 09, 2015",
          songDuration: "11:20",
        ),
        SongsTableRow(
          songID: "5",
          imgUrl: "assets/images/songs/jc23.jpeg",
          songName: "Ma consolation",
          artistName: "Joyous Celebration",
          albumName: "JC Vol. 23",
          dateAdded: "Apr 21, 2022",
          songDuration: "6:56",
        ),
        SongsTableRow(
          songID: "6",
          imgUrl: "assets/images/songs/jc24.jpeg",
          songName: "Wait on the Lord",
          artistName: "Joyous Celebration",
          albumName: "JC Vol. 24",
          dateAdded: "Jan 28, 2011",
          songDuration: "7:17",
        ),
        SongsTableRow(
          songID: "7",
          imgUrl: "assets/images/songs/jc25.jpeg",
          songName: "Zulu Worship Medley",
          artistName: "Joyous Celebration",
          albumName: "JC Vol. 25",
          dateAdded: "July 11, 2013",
          songDuration: "3:25",
        ),
        SongsTableRow(
          songID: "8",
          imgUrl: "assets/images/songs/mwema.jpeg",
          songName: "Mwema",
          artistName: "Neema Gospel Choir",
          albumName: "JC Vol. 19 (Back to the cross)",
          dateAdded: "May 09, 2015",
          songDuration: "11:20",
        ),
        SongsTableRow(
          songID: "9",
          imgUrl: "assets/images/songs/paul_neema.jpeg",
          songName: "Jina Yesu",
          artistName: "Neema Gospel Choir (feat Paul Clement)",
          albumName: "Mungu wa Maajabu",
          dateAdded: "Apr 21, 2022",
          songDuration: "6:56",
        ),
        SongsTableRow(
          songID: "10",
          imgUrl: "assets/images/songs/tshwane.jpeg",
          songName: "Wait on the Lord",
          artistName: "Tshwane Gospel Choir",
          albumName: "JC Vol. 15 (My Gift, Live at ICC Arena)",
          dateAdded: "Jan 28, 2011",
          songDuration: "7:17",
        ),
        SongsTableRow(
          songID: "11",
          imgUrl: "assets/images/songs/tshwane2.jpeg",
          songName: "Zulu Worship Medley",
          artistName: "Tshwane Gospel Choir",
          albumName: "JC Vol. 17 (Grateful)",
          dateAdded: "July 11, 2013",
          songDuration: "3:25",
        ),
        SongsTableRow(
          songID: "12",
          imgUrl: "assets/images/songs/zimpraise.jpeg",
          songName: "Jesus, You're so good",
          artistName: "Zimpraise",
          albumName: "JC Vol. 19 (Back to the cross)",
          dateAdded: "May 09, 2015",
          songDuration: "11:20",
        ),
        SongsTableRow(
          songID: "12",
          imgUrl: "assets/images/artists/donnie.jpg",
          songName: "Carribean Medley",
          artistName: "Donnie McClurkin",
          albumName: "Mungu wa Maajabu",
          dateAdded: "Apr 21, 2022",
          songDuration: "6:56",
        ),
        SongsTableRow(
          songID: "14",
          imgUrl: "assets/images/artists/joel.jpg",
          songName: "Sitabaki kama nilivyo",
          artistName: "Joel Lwaga",
          albumName: "JC Vol. 15 (My Gift, Live at ICC Arena)",
          dateAdded: "Jan 28, 2011",
          songDuration: "7:17",
        ),
        SongsTableRow(
          songID: "15",
          imgUrl: "assets/images/artists/maverick.jpg",
          songName: "Jireh",
          artistName: "Maverick City Music",
          albumName: "JC Vol. 17 (Grateful)",
          dateAdded: "July 11, 2013",
          songDuration: "3:25",
        ),
        SongsTableRow(
          songID: "16",
          imgUrl: "assets/images/artists/ntokozo.jpeg",
          songName: "We Pray for More",
          artistName: "Ntokozo Mbambo",
          albumName: "JC Vol. 19 (Back to the cross)",
          dateAdded: "May 09, 2015",
          songDuration: "11:20",
        ),
      ],
    );
  }
}

class SongsTableRow extends StatelessWidget {
  const SongsTableRow({
    super.key,
    required this.imgUrl,
    required this.songName,
    required this.artistName,
    required this.albumName,
    required this.dateAdded,
    required this.songDuration,
    required this.songID,
  });

  // ImageContainerTextRow
  final String imgUrl;
  final String songName;
  final String artistName;

  // SongsText
  final String albumName;
  final String dateAdded;
  final String songDuration;
  final String songID;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        children: [
          // Text (# + Title)
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.transparent,
              child: Row(
                children: [
                  SongsText(lebo: songID),
                  ImageContainerTextRow(
                    imgUrl: imgUrl,
                    songName: songName,
                    artistName: artistName,
                  ),
                ],
              ),
            ),
          ),

          // Text (Album + Date Added) + Clock Icon
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SongsText(lebo: albumName),
                  SongsText(lebo: dateAdded),
                  SongsText(lebo: songDuration),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SongsText extends StatelessWidget {
  const SongsText({
    super.key,
    required this.lebo,
  });

  final String lebo;

  @override
  Widget build(BuildContext context) {
    return Text(
      lebo.length > 20 ? '${lebo.substring(0, 20)}...' : lebo,
      style: const TextStyle(
        color: kTextMinorColor,
        fontSize: 15,
      ),
    );
  }
}
