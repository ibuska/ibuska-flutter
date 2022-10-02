import 'package:flutter/material.dart';
import 'package:ibuska/presentation/widgets/drawer_menu.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:photo_view/photo_view.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({Key? key}) : super(key: key);
  static const routeName = '/route';

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Rute Bus",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      drawer: const DrawerMenu(RoutePage.routeName),
      body: Center(
        // https://pbs.twimg.com/media/EIAAxLZWoAMVkA1?format=jpg&name=4096x4096
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: screenHeight * 0.01)),
            SizedBox(
              height: screenHeight * 0.8,
              child: PhotoView(
                imageProvider: const NetworkImage(
                    'https://pbs.twimg.com/media/EIAAxLZWoAMVkA1?format=png'),
                backgroundDecoration:
                    const BoxDecoration(color: Colors.transparent),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: screenHeight * 0.01)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Credits: "),
                InkWell(
                    child: const Text(
                      'Adriansyah Yasin Sulaeman',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () => launchUrl(
                        Uri.parse("https://twitter.com/adriansyahyasin/"))),
              ],
            ),
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
