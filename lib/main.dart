import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/body/3songs_table/table_of_songs.dart';
import 'package:spotify_flutter_web/widgets/body/3songs_table/top_banner.dart';
import 'package:spotify_flutter_web/widgets/body/4recommended/row_of_recommendations.dart';
import 'package:spotify_flutter_web/widgets/body/5footer/last_footer_row.dart';
import 'package:spotify_flutter_web/widgets/body/5footer/row_of_footer.dart';
import 'package:spotify_flutter_web/widgets/bottom/player.dart';
import 'package:spotify_flutter_web/widgets/sidebar/artists/artist.dart';
import 'package:spotify_flutter_web/widgets/sidebar/header/header_sidebar.dart';
import 'package:spotify_flutter_web/widgets/sidebar/middle/middle_sidebar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Web - Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all<Color>(
              kTextColor), // Set the color of the scroll indicator
          trackColor: MaterialStateProperty.all<Color>(
              Colors.grey), // Set the color of the scroll track
        ),
        // useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: const PlayerBottomBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              // 🔒️ Sidebar Container
              const Expanded(
                flex: 3,
                child: SizedBox(
                  height: double.infinity,
                  child: Column(
                    children: [
                      // First Container
                      SidebarHeaderContainer(),

                      // Middle Container
                      MiddleSidebarContainer(),

                      // Artists Container
                      ArtistsSidebarContainer(),
                    ],
                  ),
                ),
              ),
              kWidthRow,

              // Body Container
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 10.0,
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: kMusicBackground3,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: kMusicBackground3,
                        )),
                    child: ListView(
                      children: const [
                        // Banner (Top Icons + Row(Image&Text))
                        BannerBodyContainer(),

                        // Play Icon + Table of Songs
                        TableOfSongs(),
                        kHeightColumn,

                        // Find More Link
                        AlignBottomRightText(
                          lebo: "Find More",
                        ),
                        kBigHeightColumn,

                        //Recommended
                        AllRecommendations(),
                        kHeightColumn,

                        // Refresh Text Link
                        AlignBottomRightText(
                          lebo: "Refresh",
                        ),
                        kBigHeightColumn,

                        // Footer
                        RowOfFooter(),
                        kBigHeightColumn,

                        // Divider
                        kDivider,
                        kBigHeightColumn,

                        LastFooterRow(),
                        kBigHeightColumn,
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class AlignBottomRightText extends StatelessWidget {
  const AlignBottomRightText({
    super.key,
    required this.lebo,
  });

  final String lebo;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: RecommendationText(
        label: lebo,
        size: 15,
        rangi: kTextMinorColor,
      ),
    );
  }
}
