import 'package:flutter/material.dart';
import 'package:market/components/menu/menu_item.dart';

class Menu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuState();
  }
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0; // first menu index
  late List<MenuItem> menuItems;

  @override
  void initState() {
    super.initState();
    menuItems = [
      MenuItem(
        title: "Why Market?",
        selectedIndex: selectedIndex,
      ),
      MenuItem(
        title: "About",
        selectedIndex: selectedIndex,
      ),
      MenuItem(
        title: "Menu",
        selectedIndex: selectedIndex, // redundant?
        rightIcon: Icons.keyboard_arrow_down,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    // add menu items without item index

    // append item index by looping
    for (int i = 0; i < menuItems.length; i++) {
      menuItems[i]
        ..itemIndex = i
        ..onClicked = () {
          setState(() {
            selectedIndex = i;
          });
        };
    }

    return Align(
      alignment: Alignment.center,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(
          width: 60,
        ),
        itemCount: menuItems.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return menuItems[index];
        },
      ),
    );
  }
}
