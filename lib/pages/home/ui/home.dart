import 'package:flutter/material.dart';
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

import 'package:logger/logger.dart';

var logger = Logger();

// final systemParameters = GetStorage();

class HomePage extends StatelessWidget {
  const HomePage({super.key});
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
                MainPanel(),
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
