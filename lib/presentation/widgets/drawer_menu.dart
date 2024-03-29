import 'package:flutter/material.dart';
import 'package:ibuska/presentation/pages/facility_page.dart';
import 'package:ibuska/presentation/pages/faculty_page.dart';
import 'package:ibuska/presentation/pages/halte_bus_page.dart';
import 'package:ibuska/presentation/pages/home_page.dart';
import 'package:ibuska/presentation/pages/position_page.dart';
import 'package:ibuska/presentation/pages/route_page.dart';
import 'package:ibuska/presentation/pages/schedule_page.dart';

class DrawerMenu extends StatefulWidget {
  final String route;
  const DrawerMenu(this.route, {Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;

    return Drawer(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            // ignore: sized_box_for_whitespace
            Container(
              width: double.infinity,
              height: 64,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(0xFFF6DB00),
                ),
                child: Text(
                  'Informasi Bus Kampus',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenHeight * 0.035,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  ListTile(
                    title: const Text('Beranda'),
                    onTap: () {
                      widget.route == HomePage.routeName
                        ? Navigator.pop(context)
                        : Navigator.pushReplacementNamed(context, HomePage.routeName);
                    },
                  ),
                  ListTile(
                    title: const Text('Posisi Bus'),
                    onTap: () {
                      widget.route == PositionPage.routeName
                        ? Navigator.pop(context)
                        : Navigator.pushReplacementNamed(context, PositionPage.routeName);
                    },
                  ),
                  ListTile(
                    title: const Text('Jadwal Bus'),
                    onTap: () {
                      widget.route == SchedulePage.routeName
                        ? Navigator.pop(context)
                        : Navigator.pushReplacementNamed(context, SchedulePage.routeName);
                    },
                  ),
                  ListTile(
                    title: const Text('Rute Bus'),
                    onTap: () {
                      widget.route == RoutePage.routeName
                        ? Navigator.pop(context)
                        : Navigator.pushReplacementNamed(context, RoutePage.routeName);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Daftar Halte Bus'),
                    onTap: () {
                      widget.route == HalteBusPage.routeName
                        ? Navigator.pop(context)
                        : Navigator.pushReplacementNamed(context, HalteBusPage.routeName);
                    },
                  ),
                  ListTile(
                    title: const Text('Daftar Fakultas'),
                    onTap: () {
                      widget.route == FacultyPage.routeName
                        ? Navigator.pop(context)
                        : Navigator.pushReplacementNamed(context, FacultyPage.routeName);
                    },
                  ),
                  ListTile(
                    title: const Text('Daftar Fasilitas'),
                    onTap: () {
                      widget.route == FacilityPage.routeName
                        ? Navigator.pop(context)
                        : Navigator.pushReplacementNamed(context, FacilityPage.routeName);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text('Kontak Kami'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}