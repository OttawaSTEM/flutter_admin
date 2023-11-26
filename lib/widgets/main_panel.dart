import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

import '../pages/groups/controller/groups_controller.dart';

class MainPanel extends StatefulWidget {
  const MainPanel({super.key});

  @override
  State<MainPanel> createState() => _MainPanelState();
}

class _MainPanelState extends State<MainPanel> {
  final Future _getGroups = GroupsController().getGroups();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getGroups,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Some error occurred ${snapshot.error}'));
        } else if (snapshot.hasData) {
          final groups = snapshot.data;
          return ListView.builder(
            itemCount: groups.length,
            itemBuilder: (context, index) {
              Map group = groups[index];
              return ListTile(
                title: Text('${group['name']}'),
                subtitle: Text('${group['age']}'),
                // onTap: () {
                //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => PostDetails(thisItem['id'].toString())));
                // },
              );
            },
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );

    // return Row(
    //   children: <Widget>[
    //     Expanded(
    //       child: FutureBuilder(
    //         future: _getGroups,
    //         builder: (BuildContext context, AsyncSnapshot snapshot) {
    //           if (snapshot.hasError) {
    //             return Center(child: Text('Some error occurred ${snapshot.error}'));
    //           } else if (snapshot.hasData) {
    //             final groups = snapshot.data;
    //             return ListView.builder(
    //               itemCount: groups.length,
    //               itemBuilder: (context, index) {
    //                 Map group = groups[index];
    //                 return ListTile(
    //                   title: Text('${group['name']}'),
    //                   subtitle: Text('${group['age']}'),
    //                   // onTap: () {
    //                   //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => PostDetails(thisItem['id'].toString())));
    //                   // },
    //                 );
    //               },
    //             );
    //           } else {
    //             return const Center(child: CircularProgressIndicator());
    //           }
    //         },
    //       ),
    //     ),
    //   ],
    // );

    // return Row(
    //   children: <Widget>[
    //     SingleChildScrollView(
    //       child: Row(
    //         children: <Widget>[
    //           SafeArea(
    //             child: FutureBuilder(
    //               future: _getGroups,
    //               builder: (BuildContext context, AsyncSnapshot snapshot) {
    //                 if (snapshot.hasError) {
    //                   return Center(child: Text('Some error occurred ${snapshot.error}'));
    //                 } else if (snapshot.hasData) {
    //                   final groups = snapshot.data;
    //                   return ListView.builder(
    //                     itemCount: groups.length,
    //                     itemBuilder: (context, index) {
    //                       Map group = groups[index];
    //                       return ListTile(
    //                         title: Text('${group['name']}'),
    //                         subtitle: Text('${group['age']}'),
    //                         // onTap: () {
    //                         //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => PostDetails(thisItem['id'].toString())));
    //                         // },
    //                       );
    //                     },
    //                   );
    //                 } else {
    //                   return const Center(child: CircularProgressIndicator());
    //                 }
    //               },
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}
