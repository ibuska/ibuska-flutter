import 'package:flutter/material.dart';
import 'package:ibuska/presentation/pages/facility_page.dart';
import 'package:ibuska/presentation/pages/faculty_page.dart';
import 'package:ibuska/presentation/pages/halte_bus_page.dart';
import 'package:ibuska/presentation/pages/home_page.dart';
import 'package:ibuska/presentation/pages/position_page.dart';
import 'package:ibuska/presentation/pages/route_page.dart';
import 'package:ibuska/presentation/pages/schedule_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // https://fisip.ui.ac.id/informasi-publik/logo/
  static const Map<int, Color> colorUI = {
    50: Color.fromRGBO(246, 219, 0, .1),
    100: Color.fromRGBO(246, 219, 0, .2),
    200: Color.fromRGBO(246, 219, 0, .3),
    300: Color.fromRGBO(246, 219, 0, .4),
    400: Color.fromRGBO(246, 219, 0, .5),
    500: Color.fromRGBO(246, 219, 0, .6),
    600: Color.fromRGBO(246, 219, 0, .7),
    700: Color.fromRGBO(246, 219, 0, .8),
    800: Color.fromRGBO(246, 219, 0, .9),
    900: Color.fromRGBO(246, 219, 0, 1),
  };

  static const primaryUIColor = Color.fromARGB(255, 246, 219, 0);
  static const primaryUIMaterialColor = MaterialColor(0xFFF6DB00, colorUI);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ibuska',
        theme: ThemeData(
          primarySwatch: primaryUIMaterialColor,
        ),
        home: const HomePage(),
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case HomePage.routeName:
              return MaterialPageRoute(builder: (_) => const HomePage());
            case RoutePage.routeName:
              return MaterialPageRoute(builder: (_) => const RoutePage());
            case FacultyPage.routeName:
              return MaterialPageRoute(builder: (_) => const FacultyPage());
            case FacilityPage.routeName:
              return MaterialPageRoute(builder: (_) => const FacilityPage());
            case HalteBusPage.routeName:
              return MaterialPageRoute(builder: (_) => const HalteBusPage());
            case PositionPage.routeName:
              return MaterialPageRoute(builder: (_) => const PositionPage());
            case SchedulePage.routeName:
              return MaterialPageRoute(builder: (_) => const SchedulePage());
            default:
              return MaterialPageRoute(
                builder: (_) {
                  return const Scaffold(
                    body: Center(
                      child: Text('Halaman tidak ditemukan :('),
                    ),
                  );
                },
              );
          }
        });
  }
}
