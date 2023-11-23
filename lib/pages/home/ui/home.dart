import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

import '../../../constants/sizes.dart';
// import '../../drawer/controller/drawer_controller.dart';
// import '../../drawer/ui/drawer_ui.dart';
// import '../../../widgets/custom_button.dart';
import '../../../widgets/app_bar.dart';

import 'package:logger/logger.dart';

var logger = Logger();

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
      body: Column(
        children: <Widget>[
          (screenWidth(context) == 0.0)
              ? Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: PageView(
                          children: const <Widget>[
                            MainContent(1),
                            MainContent(2),
                            MainContent(3),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Expanded(
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: screenWidth(context),
                        child: const SideMenu(),
                      ),
                      Expanded(
                        child: PageView(
                          children: const <Widget>[
                            MainContent(1),
                            MainContent(2),
                            MainContent(3),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
        ],

        // child: Column(
        //   children: [
        //     const SizedBox(height: 20),
        //     CustomButton(
        //       platform: 'Ottawa STEM Club',
        //       onPressed: () {
        //         // Button on pressed action
        //       },
        //     ),
        //   ],
        // ),
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
          SizedBox(height: 20),
          Text('Content A'),
          SizedBox(height: 20),
          Text('Content A'),
        ],
      ),
    );
  }
}

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // ListTile(
        //   onTap: () {},
        //   horizontalTitleGap: 0.0,
        //   leading: const Icon(
        //     Icons.dashboard_outlined,
        //     size: sideMenuIconSize,
        //   ),
        //   title: Text(
        //     'Dashboard'.tr,
        //     style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        //           color: Theme.of(context).colorScheme.primary,
        //         ),
        //   ),
        // ),
        // ListTile(
        //   onTap: () {},
        //   horizontalTitleGap: 0.0,
        //   leading: const Icon(
        //     Icons.task_outlined,
        //     size: sideMenuIconSize,
        //   ),
        //   title: Text(
        //     'Tasks'.tr,
        //     style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        //           color: Theme.of(context).colorScheme.primary,
        //         ),
        //   ),
        // ),
        // ListTile(
        //   onTap: () {},
        //   horizontalTitleGap: 0.0,
        //   leading: const Icon(
        //     Icons.document_scanner_outlined,
        //     size: sideMenuIconSize,
        //   ),
        //   title: Text(
        //     'Documents'.tr,
        //     style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        //           color: Theme.of(context).colorScheme.primary,
        //         ),
        //   ),
        // ),
        // ListTile(
        //   onTap: () {},
        //   horizontalTitleGap: 0.0,
        //   leading: const Icon(
        //     Icons.settings,
        //     size: sideMenuIconSize,
        //   ),
        //   title: Text(
        //     'Settings'.tr,
        //     style: Theme.of(context).textTheme.bodyMedium!.copyWith(
        //           color: Theme.of(context).colorScheme.primary,
        //         ),
        //   ),
        // ),
        Container(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: ListTile(
              onTap: () {},
              horizontalTitleGap: 0.0,
              leading: const Icon(
                Icons.settings,
                size: sideMenuIconSize,
              ),
              title: Text(
                'Settings'.tr,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
          ),
        ),
        Container(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: ListTile(
              onTap: () {},
              horizontalTitleGap: 0.0,
              leading: const Icon(
                Icons.settings,
                size: sideMenuIconSize,
              ),
              title: Text(
                'Settings'.tr,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
          ),
        ),
        Container(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: ListTile(
              onTap: () {},
              horizontalTitleGap: 0.0,
              leading: const Icon(
                Icons.settings,
                size: sideMenuIconSize,
              ),
              title: Text(
                'Settings'.tr,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
          ),
        ),
        Container(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: ListTile(
              onTap: () {},
              horizontalTitleGap: 0.0,
              leading: const Icon(
                Icons.settings,
                size: sideMenuIconSize,
              ),
              title: Text(
                'Settings'.tr,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
          ),
        ),
        Container(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: ListTile(
              onTap: () {},
              horizontalTitleGap: 0.0,
              leading: const Icon(
                Icons.settings,
                size: sideMenuIconSize,
              ),
              title: Text(
                'Settings'.tr,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
          ),
        ),
        Container(
          // height: double.infinity,
          height: screenHeight(context) - 280,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: ListTile(
              onTap: () {},
              horizontalTitleGap: 0.0,
              leading: const Icon(
                Icons.settings,
                size: sideMenuIconSize,
              ),
              title: Text(
                'Settings'.tr,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

double screenWidth(BuildContext context) {
  var screenSize = MediaQuery.of(context).size;
  double screenWidth = screenSize.width;
  if (screenWidth >= screenMedium && screenWidth <= screenLarge) {
    return sideMenuScreenIconWidth;
  } else if (screenWidth < screenMedium) {
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
