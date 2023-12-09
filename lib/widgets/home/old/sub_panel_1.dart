import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

import '../../../pages/groups/controller/groups_controller.dart';

class SubPanel1 extends StatefulWidget {
  const SubPanel1({super.key});

  @override
  State<SubPanel1> createState() => _SubPanel1State();
}

class _SubPanel1State extends State<SubPanel1> {
  final Future _getGroups = GroupsController().getGroups();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
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
      ),
    );
  }
}
