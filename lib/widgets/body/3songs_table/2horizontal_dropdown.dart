import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';

class ThreeHorizontalDotsDropdown extends StatelessWidget {
  const ThreeHorizontalDotsDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        // Make the drop down black background
        cardColor: kCircularContainerColor,

        // Set the divider color to white
        dividerColor: kTextMinorColor,
      ),
      child: PopupMenuButton<String>(
        icon: const Icon(
          Icons.more_horiz,
          color: kIconNotSelected,
          size: 40,
        ),
        itemBuilder: (BuildContext context) => [
          const PopupMenuItem<String>(
            value: 'add_to_queue',
            child: TextPopMenuButton(
              lebo: 'Add to queue',
            ),
          ),
          const PopupMenuItem<String>(
            value: 'add_to_profile',
            child: TextPopMenuButton(
              lebo: "Add to profile",
            ),
          ),
          const PopupMenuItem<String>(
              value: 'edit_details',
              child: TextPopMenuButton(
                lebo: "Edit Details",
              )),
          const PopupMenuItem<String>(
              value: 'create_similar_playlist',
              child: TextPopMenuButton(
                lebo: "Create similar playlist",
              )),
          const PopupMenuItem<String>(
            value: 'delete',
            child: TextPopMenuButton(
              lebo: "Delete",
            ),
          ),
          const PopupMenuDivider(),
          const PopupMenuItem<String>(
              value: 'exclude_taste_profile',
              child: TextPopMenuButton(
                lebo: "Exclude from your taste profile",
              )),
          const PopupMenuDivider(),
          PopupMenuItem<String>(
            value: 'share',
            child: PopupMenuButton<String>(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextPopMenuButton(
                    lebo: "Share",
                  ),
                  Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 15,
                  )
                ],
              ),
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem<String>(
                    value: 'copy_link',
                    child: TextPopMenuButton(
                      lebo: "Copy Link to playlist",
                    )),
                const PopupMenuItem<String>(
                    value: 'like_playlist',
                    child: TextPopMenuButton(
                      lebo: "Like playlist",
                    )),
              ],
              // Adjust the offset to open the menu to the right
              offset: const Offset(0, 30),
            ),
          ),
          const PopupMenuDivider(),
          const PopupMenuItem<String>(
              value: 'about_recommendations',
              child: TextPopMenuButton(
                lebo: "About recommendations",
              )),
          const PopupMenuDivider(),
          const PopupMenuItem<String>(
              value: 'open_in_desktop_app',
              child: TextPopMenuButton(
                lebo: "Open in Desktop app",
              )),
        ],
        onSelected: (String value) {
          // Handle the selected option here
          print('Selected: $value');
        },
      ),
    );
  }
}

class TextPopMenuButton extends StatelessWidget {
  const TextPopMenuButton({
    super.key,
    required this.lebo,
  });

  final String lebo;

  @override
  Widget build(BuildContext context) {
    return Text(
      lebo,
      style: const TextStyle(
        color: kTextColor,
      ),
    );
  }
}
