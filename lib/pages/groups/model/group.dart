class Group {
  String name;
  String cuisine;
  int age;
  // List<Object> reviews;

  Group(
    this.name,
    this.cuisine,
    this.age,
    // this.reviews,
  );

  factory Group.fromJson(dynamic json) {
    return Group(
      json['name'] as String,
      json['cuisine'] as String,
      json['age'] as int,
      // json['reviews']!! as Object,
    );
  }

  @override
  String toString() {
    return '{$name, $cuisine, $age}';
  }
}
