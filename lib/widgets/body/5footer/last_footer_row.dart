import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/body/5footer/row_of_footer.dart';

class LastFooterRow extends StatelessWidget {
  const LastFooterRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // 1st Row
        Row(
          children: [
            kWidthRow,
            FooterMinorText(lebo: "Legal"),
            FooterMinorText(lebo: "Privacy Center"),
            FooterMinorText(lebo: "Privacy Policy"),
            FooterMinorText(lebo: "Cookies"),
            FooterMinorText(lebo: "About Ads"),
            FooterMinorText(lebo: "Accessibility"),
          ],
        ),

        // Text
        FooterMinorText(
          lebo: "© 2023 Spotify AB",
        ),
      ],
    );
  }
}
