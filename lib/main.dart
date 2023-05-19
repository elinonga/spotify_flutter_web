import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';
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
                      color: kPrimaryColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      border: Border.all(
                        color: kPrimaryColor,
                        width: 2.0,
                      ),
                    ),
                    child: ListView(
                      children: [
                        const SizedBox(height: 12.0),

                        // Container Header
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Left Icons
                            Padding(
                              padding: EdgeInsets.only(left: 12.0),
                              child: Row(
                                children: [
                                  CircularIconContainer(
                                    myIcon: Icons.arrow_back_ios,
                                  ),
                                  SizedBox(width: 15),
                                  CircularIconContainer(
                                    myIcon: Icons.arrow_forward_ios,
                                  ),
                                ],
                              ),
                            ),

                            // Right container
                            Padding(
                              padding: EdgeInsets.only(right: 12.0),
                              child: Row(
                                children: [
                                  IconTextContainer(),
                                  SizedBox(width: 15),
                                  CircularIconContainer(
                                    myIcon: Icons.person,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),

                        // Text + Image
                        Container(
                          color: Colors.red,
                          child: const Text(
                            "Body Container",
                          ),
                        ),

                        // Play Icon + Table of Songs
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

class IconTextContainer extends StatelessWidget {
  const IconTextContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kCircularContainerColor,
        border: Border.all(
          color: kColumnCardsColor,
          width: 1.0,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(
          top: 2.0,
          bottom: 2.0,
          left: 8.0,
          right: 8.0,
        ),
        child: Row(
          children: [
            Icon(
              Icons.download_for_offline_rounded,
              color: kIconNotSelected,
            ),
            SizedBox(width: 5),
            Text(
              "Install App",
              style: TextStyle(
                color: kTextColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircularIconContainer extends StatelessWidget {
  const CircularIconContainer({
    super.key,
    this.myIcon,
  });

  final IconData? myIcon;

  @override
  Widget build(BuildContext context) {
    // Set padding for the icons, to appear centered correctly in the container
    EdgeInsets padding;
    if (myIcon == Icons.arrow_back_ios) {
      padding = const EdgeInsets.only(left: 8.0);
    } else if (myIcon == Icons.arrow_forward_ios) {
      padding = const EdgeInsets.only(left: 2.0);
    } else {
      padding = EdgeInsets.zero;
    }

    return Container(
      alignment: Alignment.center,
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: padding, // Adjust the padding as needed
          child: Icon(
            myIcon,
            color: Colors.white,
            size: 22,
          ),
        ),
      ),
    );
  }
}
