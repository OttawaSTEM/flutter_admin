import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/sizes.dart';
import '../../../../utils/utils.dart';

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
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            ListTile(
              dense: true,
              visualDensity: const VisualDensity(vertical: sideMenuVisualDensity),
              onTap: () {
                Get.toNamed("/groups");
              },
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
            ListTile(
              dense: true,
              visualDensity: const VisualDensity(vertical: sideMenuVisualDensity),
              horizontalTitleGap: sideMenuHorizontalTitleGap,
              leading: const Icon(
                Icons.settings,
                size: sideMenuIconSize,
              ),
              title: (!_sideMenuIcon)
                  ? Text(
                      'Users'.tr,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    )
                  : null,
              onTap: () {
                Get.toNamed("/users");
              },
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
                title: (!_sideMenuIcon)
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
              ),
          ],
        ),
      ),
    );
  }
}
