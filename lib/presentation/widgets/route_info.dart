import 'package:flutter/material.dart';

class RouteInfo extends StatefulWidget {
  final String routeColor;
  const RouteInfo(this.routeColor, {Key? key}) : super(key: key);

  @override
  State<RouteInfo> createState() => _RouteInfoState();
}

class _RouteInfoState extends State<RouteInfo> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;

    return Padding(
      padding: EdgeInsets.only(
        right: screenWidth * 0.075,
        left: screenWidth * 0.075,
        top: screenHeight * 0.01,
        bottom: screenHeight * 0.01,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.routeColor == "merah"
                  ? "Rute Lurus (Rute Merah)"
                  : "Rute Belok Kanan (Rute Biru)",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: widget.routeColor == "merah"
                    ? const Color(0xFFED1B24)
                    : const Color(0xFF2E3192),
                ),
              ),
              const Text("Perjalanan Normal")
            ],
          ),
          // https://stackoverflow.com/a/54222675
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              widget.routeColor == "merah"
                ? "assets/images/red-route.png"
                : "assets/images/blue-route.png",
              height: 50,
              width: 50,
            ),
          ),
        ],
      ),
    );
  }
}
