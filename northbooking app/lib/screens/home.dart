import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imagePaths = [
    'assets/images/bus.png',
    'assets/images/car.png',
    'assets/images/luxary.png',
    'assets/images/plan.png',
    'assets/images/hotel.png',
    'assets/images/event.png',
  ];

  List<String> texts = [
    'Bus',
    'Car',
    'Luxury Cars',
    'Airline',
    'Hotels &Hostels',
    'Events',
  ];

  List<int> comingSoonIndexes = [
    3,
    4,
    5,
    6
  ]; // Indexes of cards where "Coming Soon" will be displayed

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Flexible(
            child: Center(
              child: Opacity(
                opacity: 0.5, // Set opacity to 50%
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 250,
                  height: 250,
                ),
              ),
            ),
          ),
          actions: [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(
                  'assets/images/profile.jpeg'), // Change to the path of your profile picture
            ),
            SizedBox(width: 10),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                          'assets/images/profile.jpeg'), // Change to the path of your profile picture
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Saleem',
                      style: GoogleFonts.abel(
                        fontSize: 16, // Font size 16
                        color: Color(0xFFB3006D), // Blue color
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text('Setting'),
                onTap: () {
                  // Update UI or navigate to a new screen
                },
              ),
              ListTile(
                title: Text('Notification'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: GridView.builder(
          padding: EdgeInsets.only(
            right: 20,
            left: 20,
            top: 30,
          ),
          itemCount: imagePaths.length, // Use the length of the imagePaths list
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 25,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.white,
              elevation: 2,
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          padding: EdgeInsets.all(
                              10), // Add padding around the image
                          child: Image.asset(
                            imagePaths[
                                index], // Use the image path at the current index
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          texts[index], // Use the text at the current index
                          style: GoogleFonts.aBeeZee(
                            fontSize: 18, // Font size 16
                            color: Color(0xFFB3006D), // Blue color
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (comingSoonIndexes.contains(index))
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'Coming Soon',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
