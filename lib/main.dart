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
      // backgroundColor: kBackgroundColor,
      backgroundColor: Colors.blue,
      bottomNavigationBar: const PlayerBottomBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              // Sidebar Container
              const Expanded(
                flex: 4,
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
                flex: 6,
                child: Container(
                  color: Colors.green,
                  height: double.infinity,
                  child: Text(
                    "Body Container",
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
