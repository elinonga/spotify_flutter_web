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
          bottom: 10.0,
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: kColumnCardsColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
            border: Border.all(
              color: kColumnCardsColor,
              width: 2.0,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // A Row of Icon + Dropdown Menu
                const RowHeaderArtistList(),
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

// A Row of Icon + Dropdown Menu
class RowHeaderArtistList extends StatelessWidget {
  const RowHeaderArtistList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Search Icon
          const Icon(
            Icons.search,
            color: kIconNotSelected,
          ), // Search icon
          const SizedBox(width: 8),

          // Recents Dropdown
          PopupMenuButton<String>(
            itemBuilder: (context) {
              return const [
                PopupMenuItem(
                  value: "Recents",
                  child: Text("Recents"),
                ),
                PopupMenuItem(
                  value: "Recently Added",
                  child: Text("Recently Added"),
                ),
                PopupMenuItem(
                  value: "Alphabetical",
                  child: Text("Alphabetical"),
                ),
                PopupMenuItem(
                  value: "Creator",
                  child: Text("Creator"),
                ),
              ];
            },
            onSelected: (value) {
              // Handle dropdown menu item selection
              print("Selected: $value");
            },
            child: const Row(
              children: [
                Text(
                  "Recents",
                  style: TextStyle(
                    color: kTextMinorColor,
                  ),
                ),

                // Dropdown icon
                Icon(
                  Icons.arrow_drop_down,
                  color: kIconNotSelected,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Artists List (Scrollable)
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
