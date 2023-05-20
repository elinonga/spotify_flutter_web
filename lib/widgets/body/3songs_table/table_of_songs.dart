import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/body/3songs_table/3songs_table.dart';
import 'package:spotify_flutter_web/widgets/body/3songs_table/play_icon_dropdown_row.dart';

class TableOfSongs extends StatelessWidget {
  const TableOfSongs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.orange,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [
            kMusicBackground1,
            kMusicBackground2,
            kMusicBackground3,
            kMusicBackground3,
            kMusicBackground3,
            kMusicBackground3,
            kMusicBackground3,
            kMusicBackground3,
            kMusicBackground3,
            kMusicBackground3,
            kMusicBackground3,
            kMusicBackground3,
            kMusicBackground3,
          ],
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Play Icon + Dropdown
          PlayIconDropdownRow(),

          // Songs List
          SongsTableData(),
        ],
      ),
    );
  }
}
