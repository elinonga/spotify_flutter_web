import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';

class ArtistsSidebarContainer extends StatelessWidget {
  const ArtistsSidebarContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          top: 10.0,
          bottom: 10.0,
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: kColumnCardsColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            border: Border.all(
              color: kColumnCardsColor,
              width: 2.0,
            ),
          ),
          child: const SingleChildScrollView(
            child: Column(
              children: [
                ArtistContainer(label: "Hii ya mwisho"),
                SizedBox(height: 30),
                ArtistContainer(label: "Hii ya mwisho"),
                SizedBox(height: 30),
                ArtistContainer(label: "Hii ya mwisho"),
                SizedBox(height: 30),
                ArtistContainer(label: "Hii ya mwisho"),
                SizedBox(height: 30),
                ArtistContainer(label: "Hii ya mwisho"),
                SizedBox(height: 30),
                ArtistContainer(label: "Hii ya mwisho"),
                SizedBox(height: 30),
                ArtistContainer(label: "Hii ya mwisho"),
                SizedBox(height: 30),
                ArtistContainer(label: "Hii ya mwisho"),
                SizedBox(height: 30),
                ArtistContainer(label: "Hii ya mwisho"),
                SizedBox(height: 30),
                ArtistContainer(label: "Kariakoo"),
                SizedBox(height: 30),
                ArtistContainer(label: "Kariakoo"),
                SizedBox(height: 30),
                ArtistContainer(label: "Kariakoo"),
                SizedBox(height: 30),
                ArtistContainer(label: "Kariakoo"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ArtistContainer extends StatelessWidget {
  const ArtistContainer({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        color: kTextMinorColor,
      ),
    );
  }
}
