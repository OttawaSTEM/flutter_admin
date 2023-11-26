import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

import '../../../constants/sizes.dart';
// import '../../drawer/controller/drawer_controller.dart';
// import '../../drawer/ui/drawer_ui.dart';
// import '../../../widgets/custom_button.dart';
import '../../../widgets/app_bar.dart';

import 'package:logger/logger.dart';

var logger = Logger();

final systemParameters = GetStorage();

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
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SingleChildScrollView(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          : const Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SingleChildScrollView(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(30),
                                      child: Text('test'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
    );
  }
}

class MainContent extends StatelessWidget {
  final int indexContent;

  const MainContent(this.indexContent, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      child: const Column(
        children: <Widget>[
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
          SizedBox(height: 40),
          Text('Content A'),
        ],
      ),
    );
  }
}

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  bool _sideMenuIcon = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _sideMenuIcon ? sideMenuScreenIconWidth : sideMenuScreenFullWidth,
      child: Ink(
        color: const Color.fromARGB(31, 183, 183, 183),
        child: ListView(
          children: <Widget>[
            ListTile(
              dense: true,
              visualDensity: const VisualDensity(vertical: sideMenuVisualDensity),
              onTap: () {},
              horizontalTitleGap: sideMenuHorizontalTitleGap,
              leading: const Icon(
                Icons.settings,
                size: sideMenuIconSize,
              ),
              title: (!_sideMenuIcon)
                  ? Text(
                      'Settings'.tr,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    )
                  : null,
            ),
            SizedBox(
              height: screenHeight(context) - sideMenuBottomSpace,
            ),
            ListTile(
              dense: true,
              visualDensity: const VisualDensity(vertical: sideMenuVisualDensity),
              horizontalTitleGap: sideMenuHorizontalTitleGap,
              // hoverColor: Theme.of(context).colorScheme.primary,
              onTap: () {},
              leading: const Icon(
                Icons.settings,
                size: sideMenuIconSize,
              ),
              title: (!_sideMenuIcon)
                  ? Text(
                      'Settings'.tr,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    )
                  : null,
            ),
            if (!_sideMenuIcon)
              ListTile(
                dense: true,
                visualDensity: const VisualDensity(vertical: sideMenuVisualDensity),
                horizontalTitleGap: sideMenuHorizontalTitleGap,
                leading: Icon(
                  Icons.keyboard_double_arrow_left,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: (screenWidth(context) > sideMenuScreenIconWidth)
                    ? Text(
                        'Collapse'.tr,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      )
                    : null,
                onTap: () {
                  setState(() {
                    _sideMenuIcon = true;
                  });
                },
              ),
            if (_sideMenuIcon)
              ListTile(
                dense: true,
                visualDensity: const VisualDensity(vertical: sideMenuVisualDensity),
                horizontalTitleGap: sideMenuHorizontalTitleGap,
                leading: Icon(
                  Icons.keyboard_double_arrow_right,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onTap: () {
                  setState(() {
                    _sideMenuIcon = false;
                  });
                },
              )
          ],
        ),
      ),
    );
  }
}

double screenWidth(BuildContext context) {
  var screenSize = MediaQuery.of(context).size;
  double screenWidth = screenSize.width;
  if (screenWidth >= screenMobile && screenWidth <= screenLarge) {
    return sideMenuScreenIconWidth;
  } else if (screenWidth < screenMobile) {
    return sideMenuScreenZeroWidth;
  } else {
    return sideMenuScreenFullWidth;
  }
}

double screenHeight(BuildContext context) {
  var screenSize = MediaQuery.of(context).size;
  double screenHeight = screenSize.height;
  // logger.i(screenHeight);
  return screenHeight;
}

// bool mobileDevice(BuildContext context) {
//   // var screenSize = MediaQuery.of(context).size;
//   // double screenWidth = screenSize.width;
//   logger.i(MediaQuery.of(context).size.width);
//   if (MediaQuery.of(context).size.width <= screenMobile) {
//     // logger.i(screenSize.width);
//     logger.i('true');
//     return true;
//   } else {
//     logger.i('false');
//     return false;
//   }
// }

bool isMobileDevice(BuildContext context) => MediaQuery.of(context).size.width >= screenMobile;
