class HomeModel {
  HomeModel({
    required this.abbreviation,
    required this.name,
  });

  String abbreviation;
  String name;

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        abbreviation: json['sigla'],
        name: json['nome'],
      );

  static List<HomeModel> listFromJson(list) => List<HomeModel>.from(
        list.map(
          (x) => HomeModel.fromJson(x),
        ),
      );
}
