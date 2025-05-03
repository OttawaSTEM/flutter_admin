import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  bool _extendedSideMenu = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: _extendedSideMenu ? sideMenuScreenExtendWidth : sideMenuScreenCollapseWidth,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
              ),
              icon: const Icon(
                Icons.download,
              ),
              label: _extendedSideMenu ? const Text('Download') : const Text(''),
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              icon: const Icon(
                Icons.download,
              ),
              label: _extendedSideMenu ? const Text('Download') : const Text(''),
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
              ),
              icon: const Icon(
                Icons.download,
              ),
              label: _extendedSideMenu ? const Text('Download') : const Text(''),
              onPressed: () {
                setState(() {
                  _extendedSideMenu = !_extendedSideMenu;
                });
              },
            ),
          ),
        ],
      ),
      // child: ListView(
      //   children: <Widget>[
      //     ListTile(
      //       dense: true,
      //       visualDensity: const VisualDensity(vertical: sideMenuVisualDensity),
      //       onTap: () {
      //         Get.toNamed("/groups");
      //       },
      //       horizontalTitleGap: sideMenuHorizontalTitleGap,
      //       leading: const Icon(
      //         Icons.settings,
      //         size: sideMenuIconSize,
      //       ),
      //       title: (_extendedSideMenu)
      //           ? Text(
      //               'Settings'.tr,
      //               style: Theme.of(context).textTheme.bodyMedium!.copyWith(
      //                     color: Theme.of(context).colorScheme.primary,
      //                   ),
      //             )
      //           : null,
      //     ),
      //     ListTile(
      //       dense: true,
      //       visualDensity: const VisualDensity(vertical: sideMenuVisualDensity),
      //       horizontalTitleGap: sideMenuHorizontalTitleGap,
      //       leading: const Icon(
      //         Icons.settings,
      //         size: sideMenuIconSize,
      //       ),
      //       title: (_extendedSideMenu)
      //           ? Text(
      //               'Users'.tr,
      //               style: Theme.of(context).textTheme.bodyMedium!.copyWith(
      //                     color: Theme.of(context).colorScheme.primary,
      //                   ),
      //             )
      //           : null,
      //       onTap: () {
      //         Get.toNamed("/users");
      //       },
      //     ),
      //     SizedBox(
      //       height: screenHeight(context) - sideMenuBottomSpace,
      //     ),
      //     ListTile(
      //       dense: true,
      //       visualDensity: const VisualDensity(vertical: sideMenuVisualDensity),
      //       horizontalTitleGap: sideMenuHorizontalTitleGap,
      //       // hoverColor: Theme.of(context).colorScheme.primary,
      //       onTap: () {},
      //       leading: const Icon(
      //         Icons.settings,
      //         size: sideMenuIconSize,
      //       ),
      //       title: (_extendedSideMenu)
      //           ? Text(
      //               'Settings'.tr,
      //               style: Theme.of(context).textTheme.bodyMedium!.copyWith(
      //                     color: Theme.of(context).colorScheme.primary,
      //                   ),
      //             )
      //           : null,
      //     ),
      //     ListTile(
      //       dense: true,
      //       visualDensity: const VisualDensity(vertical: sideMenuVisualDensity),
      //       horizontalTitleGap: sideMenuHorizontalTitleGap,
      //       leading: Icon(
      //         Icons.keyboard_double_arrow_left,
      //         color: Theme.of(context).colorScheme.primary,
      //       ),
      //       // title: (_extendedSideMenu)
      //       //     ? Text(
      //       //         'Collapse'.tr,
      //       //         style: Theme.of(context).textTheme.bodyMedium!.copyWith(
      //       //               color: Theme.of(context).colorScheme.primary,
      //       //             ),
      //       //       )
      //       //     : null,
      //       onTap: () {
      //         setState(() {
      //           _extendedSideMenu = !_extendedSideMenu;
      //         });
      //       },
      //     ),

      //     // _extendedSideMenu
      //     //     ? ListTile(
      //     //         dense: true,
      //     //         visualDensity: const VisualDensity(vertical: sideMenuVisualDensity),
      //     //         horizontalTitleGap: sideMenuHorizontalTitleGap,
      //     //         leading: Icon(
      //     //           Icons.keyboard_double_arrow_left,
      //     //           color: Theme.of(context).colorScheme.primary,
      //     //         ),
      //     //         title: (_extendedSideMenu)
      //     //             ? Text(
      //     //                 'Collapse'.tr,
      //     //                 style: Theme.of(context).textTheme.bodyMedium!.copyWith(
      //     //                       color: Theme.of(context).colorScheme.primary,
      //     //                     ),
      //     //               )
      //     //             : null,
      //     //         onTap: () {
      //     //           setState(() {
      //     //             _extendedSideMenu = !_extendedSideMenu;
      //     //           });
      //     //         },
      //     //       )
      //     //     : ListTile(
      //     //         dense: true,
      //     //         visualDensity: const VisualDensity(vertical: sideMenuVisualDensity),
      //     //         horizontalTitleGap: sideMenuHorizontalTitleGap,
      //     //         leading: Icon(
      //     //           Icons.keyboard_double_arrow_right,
      //     //           color: Theme.of(context).colorScheme.primary,
      //     //         ),
      //     //         onTap: () {
      //     //           setState(() {
      //     //             _extendedSideMenu = !_extendedSideMenu;
      //     //           });
      //     //         },
      //     //       ),
      //   ],
      // ),
    );
  }
}
