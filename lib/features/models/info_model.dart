class JsonInfoData{
  final String name;
  final String? nickName;
  final int? age;
  final String? about;
  final String? headline;
  final String? picURL;
  final String? logoURL;
  final String? resumeURL;
  final bool? available;

  JsonInfoData({
    required this.name,
    required this.nickName,
    required this.age,
    required this.about,
    required this.headline,
    required this.picURL,
    required this.logoURL,
    required this.resumeURL,
    required this.available
  });

  factory JsonInfoData.fromJson(Map<String,dynamic> json){
    return JsonInfoData(
      name:json['name'],
      about: json['about'],
      age: json['age'],
      available: json['available'],
      headline: json['headline'],
      logoURL: json['logo'],
      nickName: json['nickname'],
      picURL: json['picture'],
      resumeURL: json['resume']
    );
  }
}