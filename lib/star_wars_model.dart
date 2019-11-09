import 'dart:convert';

class StarWarsModel {
  String name;
  String height;
  String mass;
  String hair_color;
  String skin_color;
  String eye_color;
  String birth_year;
  String gender;

  StarWarsModel(
      {this.name,
      this.height,
      this.mass,
      this.hair_color,
      this.skin_color,
      this.eye_color,
      this.birth_year,
      this.gender});

  factory StarWarsModel.fromJson(Map<String, dynamic> json) => StarWarsModel(
      name: json['name'],
      height: json['height'],
      mass: json['mass'],
      hair_color: json['hair_color'],
      skin_color: json['skin_color'],
      eye_color: json['eye_color'],
      birth_year: json['birth_year'],
      gender: json['gender']);

  List<StarWarsModel> decodeDeceserializeJsonString(dynamic jsonString) {
    dynamic map = json.decode(jsonString);
    List<StarWarsModel> starWarsModelList = List<StarWarsModel>();
    for (var entry in map) {
      starWarsModelList.add(StarWarsModel.fromJson(entry));
    }
    return starWarsModelList;
  }
}
