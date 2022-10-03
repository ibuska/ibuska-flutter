import 'package:flutter/material.dart';

List<DropdownMenuItem<String>> dropdownItems(map) {
  List<DropdownMenuItem<String>> menuItems = [];
  for (var name in map.keys) {
    menuItems
        .add(DropdownMenuItem(value: name, child: Text(name)));
  }
  return menuItems;
}
