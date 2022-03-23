import 'package:portfolio/features/models/contact_model.dart';
import 'package:portfolio/features/models/info_model.dart';
import 'package:portfolio/features/models/skills_model.dart';

class JsonFileData{
  final JsonInfoData info;
  final JsonContactData contact;
  final List<JsonSkillsModel> skills;

  const JsonFileData({
    required this.info,
    required this.contact,
    required this.skills
  });
  factory JsonFileData.fromJson(Map<String,dynamic> json){
    return JsonFileData(
        info: JsonInfoData.fromJson(json['info']),
        skills: listOfSkills(json['skills']),
        contact: JsonContactData.fromJson(json['contact'])
    );
  }
}

List<JsonSkillsModel> listOfSkills(skills){
  List<JsonSkillsModel> data = [];
  for (Map<String,dynamic> item in skills){
    data.add(JsonSkillsModel.fromJson(item));
  }
  return data;
}