// import 'dart:io';

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

import 'lang/languages.dart';
import 'routes/app_routes.dart';

Future main() async {
  // Let's Encrypt Certificate Handshake Expired Error
  // WidgetsFlutterBinding.ensureInitialized();
  // ByteData data = await PlatformAssetBundle().load('assets/ca/lets-encrypt-r3.pem');
  // SecurityContext.defaultContext.setTrustedCertificatesBytes(data.buffer.asUint8List());

  // await GetStorage.init();
  await dotenv.load(fileName: 'assets/local.env');
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // final systemParameters = GetStorage();
    // systemParameters.write('iconSideMenu', false);

    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
        // colorSchemeSeed: const Color.fromRGBO(33, 150, 243, 0),
      ),
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      initialRoute: AppRoutes.home,
      getPages: AppPages.pages,
    );
  }
}
