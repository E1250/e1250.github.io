
class JsonContactData{
  final String? phoneNumber;
  final String? linkedinURL;
  final String? githubURL;
  final String? kaggleURL;
  final String? dribbbleURL;
  final String? hashNodeURL;

  JsonContactData({
   required this.phoneNumber,
   required this.linkedinURL,
   required this.githubURL,
   required this.kaggleURL,
   required this.dribbbleURL,
    required this.hashNodeURL
  });

  factory JsonContactData.fromJson(Map<String,dynamic> json){
    return JsonContactData(
        dribbbleURL: json['Dribbble'],
      githubURL: json['Github'],
      kaggleURL: json['Kaggle'],
      linkedinURL: json['LinkedIn'],
      phoneNumber: json['PhoneNumber'],
      hashNodeURL: json['HashNode']
    );
  }

}