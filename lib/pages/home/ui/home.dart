import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import '../../drawer/controller/drawer_controller.dart';
// import '../../drawer/ui/drawer_ui.dart';
// import '../../../widgets/custom_button.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/side_menu.dart';
import '../../../widgets/main_panel.dart';
import '../../groups/controller/groups_controller.dart';

import 'package:logger/logger.dart';

var logger = Logger();

// final systemParameters = GetStorage();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Future _getGroups = GroupsController().getGroups();

  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // final SideDrawerController controller = Get.put(SideDrawerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Home'.tr,
      ),
      body: isMobileDevice(context)
          ? Row(
              children: <Widget>[
                const SideMenu(),
                Expanded(
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
                ),
              ],
            )
          : const Row(
              children: <Widget>[
                MainPanel(),
              ],
            ),
    );
  }
}
