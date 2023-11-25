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
      body: Row(
        children: <Widget>[
          SizedBox(
            width: screenWidth(context),
            child: Ink(
              color: const Color.fromARGB(31, 183, 183, 183),
              child: const SideMenu(),
            ),
          ),
          const Expanded(
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
          ),

          // mobileDevice(context)
          //     ? Expanded(
          //         child: Row(
          //           children: <Widget>[
          //             SingleChildScrollView(
          //               child: PageView(
          //                 children: const <Widget>[
          //                   MainContent(1),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       )
          //     : Expanded(
          //         child: Row(
          //           children: <Widget>[
          //             SizedBox(
          //               width: screenWidth(context),
          //               child: const SideMenu(),
          //             ),
          //             SingleChildScrollView(
          //               child: PageView(
          //                 children: const <Widget>[
          //                   MainContent(1),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       )
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

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          onTap: () {},
          horizontalTitleGap: -10.0,
          leading: const Icon(
            Icons.settings,
            size: sideMenuIconSize,
          ),
          title: (screenWidth(context) > sideMenuScreenIconWidth)
              ? Text(
                  'Settings'.tr,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                )
              : null,
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: -10.0,
          leading: const Icon(
            Icons.settings,
            size: sideMenuIconSize,
          ),
          title: (screenWidth(context) > sideMenuScreenIconWidth)
              ? Text(
                  'Settings'.tr,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                )
              : null,
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: -10.0,
          leading: const Icon(
            Icons.settings,
            size: sideMenuIconSize,
          ),
          title: (screenWidth(context) > sideMenuScreenIconWidth)
              ? Text(
                  'Settings'.tr,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                )
              : null,
        ),
        ListTile(
          onTap: () {},
          horizontalTitleGap: -10.0,
          leading: const Icon(
            Icons.settings,
            size: sideMenuIconSize,
          ),
          title: (screenWidth(context) > sideMenuScreenIconWidth)
              ? Text(
                  'Settings'.tr,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                )
              : null,
        ),
        SizedBox(
          // height: double.infinity,
          height: screenHeight(context) - 238,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: ListTile(
              horizontalTitleGap: -10.0,
              // hoverColor: Theme.of(context).colorScheme.primary,
              onTap: () {},
              leading: const Icon(
                Icons.settings,
                size: sideMenuIconSize,
              ),
              title: (screenWidth(context) > sideMenuScreenIconWidth)
                  ? Text(
                      'Settings'.tr,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    )
                  : null,
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

bool mobileDevice(BuildContext context) {
  var screenSize = MediaQuery.of(context).size;
  logger.i(screenSize.width);
  if (screenSize.width > 550) {
    return false;
  } else {
    return true;
  }
}
