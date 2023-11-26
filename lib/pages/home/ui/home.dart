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
import '../../../widgets/home/side_menu.dart';
import '../../../widgets/home/sub_panel_1.dart';
import '../../../widgets/home/sub_panel_2.dart';

import 'package:logger/logger.dart';

var logger = Logger();

// final systemParameters = GetStorage();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // final SideDrawerController controller = Get.put(SideDrawerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Home'.tr,
      ),
      body: isMobileDevice(context)
          ? const Row(
              children: <Widget>[
                SideMenu(),
                SubPanel1(),
                SubPanel2(),
              ],
            )
          : const Row(
              children: <Widget>[
                SubPanel1(),
                SubPanel2(),
              ],
            ),
    );
  }
}
