import 'package:flutter/material.dart';
// import 'package:flutter_admin/widgets/global/screen_one.dart';
// import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

// import 'package:get_storage/get_storage.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import '../../drawer/controller/drawer_controller.dart';
// import '../../drawer/ui/drawer_ui.dart';
// import '../../../widgets/custom_button.dart';
import '../../../widgets/global/app_bar.dart';
// import '../../../widgets/global/screen_one.dart';
// import '../../../widgets/home/side_menu.dart';
import '../../../widgets/home/main_content.dart';

import '../../../widgets/home/side_menu.dart';
import '../../../widgets/home/old/sub_panel_1.dart';
import '../../../widgets/home/old/sub_panel_2.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Home'.tr,
      ),
      body: const Row(
        children: <Widget>[
          SideMenu(),
          VerticalDivider(thickness: 1, width: 1),
          MainContect(),
          // SubPanel1(),
          // SubPanel2(),
        ],
      ),
      // body: const Row(
      //   children: <Widget>[
      //     SideMenu(),
      //     VerticalDivider(thickness: 1, width: 1),
      //     MainContect(),
      //   ],
      // ),
    );
  }
}


// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   // final SideDrawerController controller = Get.put(SideDrawerController());
//   // final int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBarWidget(
//           title: 'Home'.tr,
//         ),
//         body: const ScreenOne()
//         // body: const ScreenOne()
//         // body: isMobileDevice(context)
//         //     ? const Row(
//         //         children: <Widget>[
//         //           SideMenu(),
//         //           SubPanel1(),
//         //           SubPanel2(),
//         //         ],
//         //       )
//         //     : const Row(
//         //         children: <Widget>[
//         //           SubPanel1(),
//         //           SubPanel2(),
//         //         ],
//         //       ),
//         );
//   }
// }
