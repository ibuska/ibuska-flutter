import 'package:flutter/material.dart';
import 'package:ibuska/data/catalogues/halte_bus_data.dart';
import 'package:ibuska/presentation/widgets/drawer_menu.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);
  static const routeName = '/schedule';

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  var selectedFaculty = "Asrama";
  
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Jadwal Bus",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      drawer: const DrawerMenu(SchedulePage.routeName),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                bottom: screenHeight * 0.01,
              ),
              child: SizedBox(
                width: screenWidth,
                height: screenHeight * 0.2,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  child: Container(
                    alignment: Alignment.topCenter,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF6DB00),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: screenHeight * 0.015,
                          ),
                          child: Text(
                            "Pilih Halte Bus",
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
                          child: DropdownButton(
                            value: selectedFaculty,
                            items: dropdownItems,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedFaculty = newValue!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [];
    for (int i = 0; i < daftarHalteBus.length; i++) {
      menuItems.add(DropdownMenuItem(
          value: daftarHalteBus[i].toString(),
          child: Text(daftarHalteBus[i].toString())));
    }
    return menuItems;
  }
}
