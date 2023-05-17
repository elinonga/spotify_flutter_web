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
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.search,
                        color: kIconNotSelected,
                      ), // Search icon
                      SizedBox(
                          width:
                              8), // Spacer between search icon and text/dropdown row
                      Row(
                        children: [
                          Text(
                            "Recents",
                            style: TextStyle(
                              color: kTextMinorColor,
                            ),
                          ), // Text label
                          Icon(
                            Icons.arrow_drop_down,
                            color: kIconNotSelected,
                          ), // Dropdown icon
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),

                // Artists List
                for (int i = 0; i < 25; i++)
                  const Column(
                    children: [
                      ArtistContainer(label: "Hii ya mwisho"),
                      SizedBox(height: 30),
                    ],
                  ),
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
