import 'package:flutter/material.dart';

class MainContect extends StatefulWidget {
  // final int _selectedIndex = 0;
  const MainContect({super.key});

  @override
  State<MainContect> createState() => _MainContectState();
}

class _MainContectState extends State<MainContect> {
  final padding = 8.0;

  final List<String> images = [
    "https://images.unsplash.com/photo-1524758631624-e2822e304c36?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
    "https://images.unsplash.com/photo-1493663284031-b7e3aefcae8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
    "https://images.unsplash.com/photo-1538688525198-9b88f6f53126?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80",
    "https://images.unsplash.com/photo-1513161455079-7dc1de15ef3e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1544457070-4cd773b4d71e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=843&q=80",
    "https://images.unsplash.com/photo-1532323544230-7191fd51bc1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1549488344-cbb6c34cf08b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
  ];

  final List<String> titles = ["Popular\nIdeas", "Favourites", "Inspiration\nIdeas", "All"];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 8, 0, 0),
        child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              // Text(titles[_selectedIndex], style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(
                height: 24,
              ),
              for (var i in images) ImageCard(i),
            ],
          ),
        ),
      ),
    );
    // This is the main content.
    // ContentSpace(_selectedIndex)
  }
}

class ImageCard extends StatelessWidget {
  final String uri;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(0, 0, 24, 24),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.network(uri),
    );
  }

  const ImageCard(this.uri, {super.key});
}
