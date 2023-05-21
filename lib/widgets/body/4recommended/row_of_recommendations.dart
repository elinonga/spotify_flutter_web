import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/sidebar/middle/middle_sidebar.dart';

class AllRecommendations extends StatelessWidget {
  const AllRecommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RecommendationText(
          label: "Recommended",
          rangi: kTextColor,
          size: 25,
        ),

        RecommendationText(
          label: "Based on what's in this playlist",
          rangi: kTextMinorColor,
          size: 14,
        ),
        SizedBox(height: 30),

        // Row of Recommendations
        RowOfRecommendations(
          imgUrl: "assets/images/artists/joel.jpg",
          songName: "Wadumu Milele",
          artistName: "Joel Lwaga",
          albumName: "Sitabaki Nilivyo (Live in Dar es Salaam, Tanzania)",
        ),
        RowOfRecommendations(
          imgUrl: "assets/images/artists/paul.jpg",
          songName: "Sijawahi Ona",
          artistName: "Paul Clement",
          albumName: "Shabaha (Live in Morogoro, Tanzania)",
        ),
        RowOfRecommendations(
          imgUrl: "assets/images/artists/donnie.jpg",
          songName: "Great is Your Mercy - Live",
          artistName: "Donnic McClurkin",
          albumName: "Donnie Live in London and more...",
        ),
        RowOfRecommendations(
          imgUrl: "assets/images/artists/maverick.jpg",
          songName: "Fear is not my Future",
          artistName: "Maverick City Music",
          albumName: "Kingdom Book One - Live in Los Angeles",
        ),
        RowOfRecommendations(
          imgUrl: "assets/images/artists/ntokozo.jpeg",
          songName: "We Pray for More",
          artistName: "Ntokozo Mbambo",
          albumName: "Moments in Time (Live)",
        ),
      ],
    );
  }
}

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
        ImageContainerTextRow(
          imgUrl: imgUrl,
          songName: songName,
          artistName: artistName,
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

class ImageContainerTextRow extends StatelessWidget {
  const ImageContainerTextRow({
    super.key,
    required this.imgUrl,
    required this.songName,
    required this.artistName,
  });

  final String imgUrl;
  final String songName;
  final String artistName;

  @override
  Widget build(BuildContext context) {
    return Row(
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
          songName.length > 20 ? '${songName.substring(0, 20)}...' : songName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: kTextColor,
          ),
        ),
        const SizedBox(height: 7),
        Text(
          artistName.length > 20
              ? '${artistName.substring(0, 20)}...'
              : artistName,
          style: const TextStyle(
            fontSize: 12,
            color: kTextMinorColor,
          ),
        ),
      ],
    );
  }
}

class RecommendationText extends StatelessWidget {
  final String label;
  final Color rangi;
  final int size;

  const RecommendationText({
    Key? key,
    required this.label,
    required this.size,
    required this.rangi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
        right: 12.0,
        bottom: 12.0,
      ),
      child: Text(
        label,
        style: TextStyle(
          color: rangi,
          fontSize: size.toDouble(),
          fontWeight: rangi == kTextColor ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
