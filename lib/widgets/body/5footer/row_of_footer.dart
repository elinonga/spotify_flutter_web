import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/body/4recommended/row_of_recommendations.dart';

class RowOfFooter extends StatelessWidget {
  const RowOfFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 12.0, right: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Company Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MajorFooterText(lebo: "Company"),
              FooterMinorText(lebo: "About"),
              FooterMinorText(lebo: "Jobs"),
              FooterMinorText(lebo: "For the record"),
            ],
          ),

          // Communities Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MajorFooterText(lebo: "Communities"),
              FooterMinorText(lebo: "For Artists"),
              FooterMinorText(lebo: "Developers"),
              FooterMinorText(lebo: "Advertising"),
              FooterMinorText(lebo: "Investors"),
              FooterMinorText(lebo: "Vendors"),
              FooterMinorText(lebo: "Spotify for Work"),
            ],
          ),

          // Useful Links Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MajorFooterText(lebo: "Useful links"),
              FooterMinorText(lebo: "Support"),
              FooterMinorText(lebo: "Free Mobile App"),
            ],
          ),

          // Social Media Icons
          Row(
            children: [
              SocialMediaIcon(
                myIcon: FontAwesome.instagram,
              ),
              SocialMediaIcon(
                myIcon: FontAwesome.twitter,
              ),
              SocialMediaIcon(
                myIcon: FontAwesome.facebook,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({
    super.key,
    required this.myIcon,
  });

  final IconData myIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: kCircularContainerColor,
      ),
      child: Icon(
        myIcon,
        color: Colors.white,
        size: 22,
      ),
    );
  }
}

class MajorFooterText extends StatelessWidget {
  const MajorFooterText({
    super.key,
    required this.lebo,
  });

  final String lebo;

  @override
  Widget build(BuildContext context) {
    return RecommendationText(
      label: lebo,
      size: 17,
      rangi: kTextColor,
    );
  }
}

class FooterMinorText extends StatelessWidget {
  const FooterMinorText({
    super.key,
    required this.lebo,
  });

  final String lebo;

  @override
  Widget build(BuildContext context) {
    return RecommendationText(
      label: lebo,
      size: 15,
      rangi: kTextMinorColor,
    );
  }
}
