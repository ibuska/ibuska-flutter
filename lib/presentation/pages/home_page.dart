import 'package:flutter/material.dart';
import 'package:ibuska/presentation/widgets/drawer_menu.dart';
import 'package:ibuska/presentation/widgets/route_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "IBUSKA",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: const DrawerMenu(HomePage.routeName),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                right: screenWidth * 0.075,
                left: screenWidth * 0.075,
                top: screenHeight * 0.04,
                bottom: screenHeight * 0.01,
              ),
              child: SizedBox(
                width: screenWidth * 0.85,
                height: screenHeight * 0.3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    alignment: Alignment.topCenter,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(125, 246, 219, 0),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: screenHeight * 0.015,
                          ),
                          child: Text(
                            "Informasi Bus Kampus",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenHeight * 0.035,
                            ),
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: screenHeight * 0.01,
                          ),
                          child: Text(
                            "Jam Operasional: 07.20 - 17.00 WIB",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenHeight * 0.035,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.01,
                bottom: screenHeight * 0.01,
              ),
              child: SizedBox(
                width: screenWidth * 0.85,
                height: screenHeight * 0.05,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(36.0),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF6DB00),
                    ),
                    child: Text(
                      "Informasi Rute Bus",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenHeight * 0.035,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const RouteInfo("merah"),
            const RouteInfo("biru"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Menu',
        child: const CircleAvatar(
          backgroundImage: AssetImage("images/ibuska-logo.png"),
          // https://stackoverflow.com/a/61100541
          radius: 56,
        ),
      ),
    );
  }
}
