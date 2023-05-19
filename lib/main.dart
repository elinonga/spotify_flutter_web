import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/body/banner/1top/circular_icon_container.dart';
import 'package:spotify_flutter_web/widgets/body/banner/1top/icon_text_container.dart';
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

                        // Top Icons (Install app + User Icon)
                        Container(
                          color: Colors.pink,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Container Header
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),

                        // Text + Image
                        Container(
                          width: double.infinity,
                          height: 300,
                          color: Colors.blue,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Picture
                              Container(
                                  color: Colors.red,
                                  height: 250,
                                  width: 200,
                                  child: Text("Image")
                                  // child: const Image(
                                  //   image: AssetImage(
                                  //     "assets/images/logo.png",
                                  //   ),
                                  // ),
                                  ),
                              const SizedBox(width: 10),

                              // Column content
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20),
                                  // Category - Playlist / Artist / Album
                                  Text(
                                    "Playlist",
                                    style: TextStyle(
                                        color: kTextColor,
                                        fontWeight: FontWeight.bold),
                                  ),

                                  //Name of Playlist
                                  Text(
                                    "Africa #1",
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50,
                                    ),
                                  ),

                                  // Row (username + # of songs in playlist + muda wa kumaliza playlist)
                                  Row(
                                    children: [
                                      Text(
                                        "mezza .",
                                        style: TextStyle(
                                            color: kTextColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 2),
                                      Text(
                                        "94 songs",
                                        style: TextStyle(
                                            color: kTextColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 2),
                                      Text(", about 7 hr 30 min")
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),

                        // Play Icon + Table of Songs
                        Container(
                          color: Colors.orange,
                          child: const SongsTableData(),
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

class SongsTableData extends StatelessWidget {
  const SongsTableData({Key? key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('#')),
        DataColumn(label: Text('Title')),
        DataColumn(label: Text('Album')),
        DataColumn(label: Text('Date added')),
        DataColumn(label: Text('Time')),
      ],
      rows: List<DataRow>.generate(
        5,
        (index) => DataRow(
          cells: List<DataCell>.generate(
            5, // Adjust the number of cells to match the number of columns
            (columnIndex) => DataCell(
              Text('R ${index + 1}, C ${columnIndex + 1}'),
            ),
          ),
        ),
      ),
    );
  }
}
