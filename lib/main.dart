import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/body/1top/build_top_icon.dart';
import 'package:spotify_flutter_web/widgets/body/2middle/image_text.dart';
import 'package:spotify_flutter_web/widgets/body/3songs_table/songs_table.dart';
import 'package:spotify_flutter_web/widgets/body/3songs_table/play_icon_dropdown_row.dart';
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
              const SizedBox(
                width: 10,
              ),

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
                      gradient: const LinearGradient(
                        colors: [
                          kBannerColor1,
                          kBannerColor2,
                          kBannerColor3,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: kBannerColor3,
                        width: 2.0,
                      ),
                    ),
                    child: ListView(
                      children: [
                        const SizedBox(height: 12.0),

                        // Top Icons (Install app + User Icon)
                        const BuildTopIconsRow(),
                        const SizedBox(height: 15),

                        // Text + Image
                        const Padding(
                          padding: EdgeInsets.only(left: 12.0),
                          child: MiddleTextImageContainer(),
                        ),
                        const SizedBox(height: 15),

                        // Play Icon + Table of Songs
                        Container(
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
                        ),

                        //End
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
