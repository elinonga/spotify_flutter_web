import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/widgets/body/3songs_table/1play_icon.dart';
import 'package:spotify_flutter_web/widgets/body/3songs_table/2horizontal_dropdown.dart';

class PlayIconDropdownRow extends StatelessWidget {
  const PlayIconDropdownRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: Row(
        children: [
          // Icon
          PlayIconContainer(),
          SizedBox(
            width: 15,
          ),

          // 3 dots horizontal Icon
          ThreeHorizontalDotsDropdown(),
        ],
      ),
    );
  }
}
