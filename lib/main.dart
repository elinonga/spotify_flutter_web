import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/body/3songs_table/table_of_songs.dart';
import 'package:spotify_flutter_web/widgets/body/3songs_table/top_banner.dart';
import 'package:spotify_flutter_web/widgets/body/4recommended/1recommend_text_header.dart';
import 'package:spotify_flutter_web/widgets/body/4recommended/row_of_recommendations.dart';
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
                        SizedBox(height: 60),

                        //Recommended
                        RecommendationText(
                          label: "Recommended",
                          rangi: kTextColor,
                          size: 25,
                        ),

                        RecommendationText(
                          label: "Based on what's in this playlist",
                          rangi: kTextMinorColor,
                          size: 14,
                        ),
                        SizedBox(height: 30),

                        // Row of Recommendations
                        RowOfRecommendations(
                          imgUrl: "assets/images/artists/joel.jpg",
                          songName: "Wadumu Milele",
                          artistName: "Joel Lwaga",
                          albumName:
                              "Sitabaki Nilivyo (Live in Dar es Salaam, Tanzania)",
                        ),
                        RowOfRecommendations(
                          imgUrl: "assets/images/artists/paul.jpg",
                          songName: "Sijawahi Ona",
                          artistName: "Paul Clement",
                          albumName: "Shabaha (Live in Morogoro, Tanzania)",
                        ),
                        RowOfRecommendations(
                          imgUrl: "assets/images/artists/donnie.jpg",
                          songName: "Great is Your Mercy - Live",
                          artistName: "Donnic McClurkin",
                          albumName: "Donnie Live in London and more...",
                        ),
                        RowOfRecommendations(
                          imgUrl: "assets/images/artists/maverick.jpg",
                          songName: "Fear is not my Future",
                          artistName: "Maverick City Music",
                          albumName: "Kingdom Book One - Live in Los Angeles",
                        ),
                        RowOfRecommendations(
                          imgUrl: "assets/images/artists/ntokozo.jpeg",
                          songName: "We Pray for More",
                          artistName: "Ntokozo Mbambo",
                          albumName: "Moments in Time (Live)",
                        ),

                        SizedBox(height: 15),

                        // Footer
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
