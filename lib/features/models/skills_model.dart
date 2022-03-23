
class JsonSkillsModel {
  final String? name;
  final List<ProjectsModel>? projects;
  final List<CertificatesModel>? certificates;
  final List? tools;
  final String? desc;

  JsonSkillsModel({
    required this.name,
    required this.projects,
    required this.certificates,
    required this.tools,
    required this.desc
  });

  factory JsonSkillsModel.fromJson(Map<String,dynamic> json){
    return JsonSkillsModel(
      name: json['name'],
      desc: json['desc'],
      tools: json['tools'],
      certificates: listOfCertificates(json['certificates']),
      projects: listOfProjects(json['projects'])
    );
  }
}

class ProjectsModel{
  final String? name;
  final String? url;
  final String? picURL;
  final String? desc;

  ProjectsModel({
    required this.name,
    required this.url,
    required this.picURL,
    required this.desc
  });
  
  
  factory ProjectsModel.fromJson(Map<String , dynamic> json){
    return ProjectsModel(
      desc: json['desc'],
      name: json['name'],
      picURL: json['pic'],
      url: json['url']
      
    );
  }
}

class CertificatesModel{
  final String? name;
  final String? imgURL;
  final String? certificateURL;

  CertificatesModel({
    required this.name,
    required this.imgURL,
    required this.certificateURL
  });

  factory CertificatesModel.fromJson(Map<String, dynamic> json){
    return CertificatesModel(
    name: json['name'],
    imgURL: json['img'],
    certificateURL:json['certificateURL']
  );
  }
}
List<CertificatesModel> listOfCertificates(certificates){
  List<CertificatesModel> data = [];
  for (Map<String,dynamic> item in certificates){
    data.add(CertificatesModel.fromJson(item));
  }
  return data;
}

List<ProjectsModel> listOfProjects(projects){
  List<ProjectsModel> data = [];
  for (Map<String,dynamic> item in projects){
    data.add(ProjectsModel.fromJson(item));
  }
  return data;
}


