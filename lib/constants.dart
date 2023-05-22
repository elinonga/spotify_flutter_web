import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFF000000);

// Size
const kWidthRow = SizedBox(width: 12);
const kMidWidth = SizedBox(width: 18);
const kHeightColumn = SizedBox(height: 15);
const kMidHeightColumn = SizedBox(height: 30);
const kBigHeightColumn = SizedBox(height: 50);

// Divider
const kDivider = Padding(
  padding: EdgeInsets.all(12.0),
  child: Divider(
    color: kIconNotSelected,
    thickness: 1.0,
  ),
);
const kDivider2 = Padding(
  padding: EdgeInsets.all(2.0),
  child: Divider(
    color: kIconNotSelected,
    thickness: 0.5,
  ),
);

// Sidebar Background colors
const kColumnCardsColor = Color(0xFF121212);
const kCircularContainerColor = Color(0xFF232323);
const kPrimaryColor = Color(0xFF1ed760);

// Right Column - Background Colors
const kBannerColor1 = Color(0xFF6f322c);
const kBannerColor2 = Color(0xFF532620);
const kBannerColor3 = Color(0xFF3C1C18);
const kMusicBackground1 = Color(0xFF2c1512);
const kMusicBackground2 = Color(0xFF1f1412);
const kMusicBackground3 = Color(0xFF121212);

// Icon Colors
const kIconSelected = Color(0xFF1db954);
const kIconNotSelected = Color(0xFFb3b3b3);

// Text Colors
const kTextColor = Color(0xFFfefeff);
const kTextMinorColor = Color(0xFFb3b3b3);
