import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import '../../drawer/controller/drawer_controller.dart';
// import '../../drawer/ui/drawer_ui.dart';
// import '../../../widgets/custom_button.dart';
import '../../../widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // final SideDrawerController controller = Get.put(SideDrawerController());

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;
    // double width = screenSize.width;
    // double height = screenSize.height;

    return Scaffold(
      // key: _scaffoldKey,
      // key: context.read<MenuAppController>().scaffoldKey,
      appBar: AppBarWidget(
        title: 'Home'.tr,
      ),
      // drawer: const SideMenu(),
      // key: _scaffoldKey.currentState.openDrawer(),
      // drawer: Drawer(
      //     child: SingleChildScrollView(
      //         // Drawer content here
      //         // design your own drawer menu here.
      //         child: Container(
      //   color: Colors.lightGreen[100],
      //   height: MediaQuery.of(context).size.height,
      //   width: double.infinity,
      // ))),
      // body: SingleChildScrollView(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              // mainAxisSize: MainAxisSize.max,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Flexible(
                  child: SideMenu(),
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
          ),
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
      children: const <Widget>[
        ListTile(title: Text("Menu A"), dense: true),
        ListTile(title: Text("Menu B"), dense: true),
        ListTile(title: Text("Menu C"), dense: true),
        ListTile(title: Text("Menu D"), dense: true),
        ListTile(title: Text("Menu E"), dense: true),
        ListTile(title: Text("Menu F"), dense: true),
        ListTile(title: Text("Menu G"), dense: true),
        ListTile(title: Text("Menu H"), dense: true),
        ListTile(title: Text("Menu I"), dense: true),
        ListTile(title: Text("Menu J"), dense: true),
        ListTile(title: Text("Menu K"), dense: true),
        ListTile(title: Text("Menu L"), dense: true),
        ListTile(title: Text("Menu M"), dense: true),
        ListTile(title: Text("Menu M"), dense: true),
      ],
    );
  }
}
