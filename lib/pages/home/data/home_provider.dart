import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

import '../model/home_model.dart';

class HomeProvider extends GetConnect {
  @override
  void onInit() {
    // All request will pass to jsonEncode so CasesModel.fromJson()
    httpClient.defaultDecoder = HomeModel.listFromJson;

    httpClient.addRequestModifier((Request request) async {
      request.headers['Authorization'] = 'Bearer sdfsdfgsdfsdsdf12345678';
      return request;
    });
  }

  Future<Response<List<HomeModel>>> getHome() => get<List<HomeModel>>('https://servicodados.ibge.gov.br/api/v1/localidades/estados');

  Future<Response<HomeModel>> postHome(body) => post<HomeModel>(
        'http://192.168.0.101:3000/items',
        body,
        decoder: (obj) => HomeModel.fromJson(obj),
      );
}
