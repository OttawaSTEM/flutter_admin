import 'package:get/get.dart';

// import '../data/home_provider.dart';

class HomeController extends GetxController {
  // final HomeProvider HomeProvider;
  // HomeController({required this.HomeProvider});
  final RxInt count = RxInt(0);
  void increment() => count.value++;

  @override
  void onInit() {
    count.value = 0;
    super.onInit();
  }

  @override
  void onClose() {
    super.onReady();
    count.value = 0;
  }

  @override
  void onReady() {
    super.onReady();
    count.value = 0;
  }

  // void findAllCities() {
  //   HomeProvider.getHome().then((result) {
  //     List<HomeModel>? data = result.body;
  //     change(data, status: RxStatus.success());
  //   }, onError: (err) {
  //     change(null, status: RxStatus.error(err.toString()));
  //   });
  // }

  // void insertHome() {
  //   const body = {'nome': 'joao', 'idade': 47};

  //   HomeProvider.postHome(body).then((result) {
  //     if (kDebugMode) {
  //       logger.i(result.body?.abbreviation);
  //       logger.i(result.body?.name);
  //     }
  //   });
  // }
}
