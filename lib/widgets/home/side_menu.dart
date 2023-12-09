import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int _selectedIndex = 0;
  final padding = 8.0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      minWidth: 56.0,
      groupAlignment: 1.0,
      backgroundColor: const Color(0xff2D3035),
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      labelType: NavigationRailLabelType.all,
      leading: Column(
        children: <Widget>[
          const SizedBox(
            height: 8,
          ),
          const Center(
            child: CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"),
            ),
          ),
          const SizedBox(
            height: 108,
          ),
          RotatedBox(
            quarterTurns: -1,
            child: IconButton(
              icon: const Icon(Icons.tune),
              color: const Color(0xffFCCFA8),
              onPressed: () {},
            ),
          )
        ],
      ),
      selectedLabelTextStyle: const TextStyle(
        color: Color(0xffFCCFA8),
        fontSize: 13,
        letterSpacing: 0.8,
        decoration: TextDecoration.underline,
        decorationThickness: 2.0,
      ),
      unselectedLabelTextStyle: const TextStyle(
        fontSize: 13,
        letterSpacing: 0.8,
      ),
      destinations: [
        buildRotatedTextRailDestination("Popular", padding),
        buildRotatedTextRailDestination("Favourites", padding),
        buildRotatedTextRailDestination("Inspiration", padding),
        buildRotatedTextRailDestination("All", padding),
      ],
    );
    // This is the main content.
    // ContentSpace(_selectedIndex)
  }
}

// Not sure what is this
NavigationRailDestination buildRotatedTextRailDestination(String text, double padding) {
  return NavigationRailDestination(
    icon: const SizedBox.shrink(),
    label: Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: RotatedBox(
        quarterTurns: -1,
        child: Text(text),
      ),
    ),
  );
}
