import 'package:flutter/material.dart';
import 'package:spotify_flutter_web/constants.dart';
import 'package:spotify_flutter_web/widgets/bottom/player.dart';

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
      body: Row(
        children: [
          // Sidebar Container
          Expanded(
            flex: 4,
            child: SizedBox(
              height: double.infinity,
              child: Column(
                children: [
                  // First Container
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kColumnCardsColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      child: const Text(
                        "Kushoto",
                        style: TextStyle(
                          color: kTextMinorColor,
                        ),
                      ),
                    ),
                  ),

                  // Middle Container
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kColumnCardsColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        border: Border.all(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                      child: const Text(
                        "Kushoto",
                        style: TextStyle(
                          color: kTextMinorColor,
                        ),
                      ),
                    ),
                  ),

                  // Artists Container
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: Container(
                      height: 500,
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
      ),
    );
  }
}
