import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';

class ArtistsSidebarContainer extends StatelessWidget {
  const ArtistsSidebarContainer({
    super.key,
  });

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
            color: Colors.red,
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
          child: const Text(
            "Hii ya mwisho",
            style: TextStyle(
              color: kTextMinorColor,
            ),
          ),
        ),
      ),
    );
  }
}
