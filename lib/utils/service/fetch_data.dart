

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:portfolio/constants/api_paths.dart';
import 'package:portfolio/features/models/json_file_model.dart';

Future<JsonFileData> fetchData()async{
  final response =  await http.get(Uri.parse(jsonDataGHAPI));
  if (response.statusCode == 200) {
    return JsonFileData.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

// Future<JsonFileData> fetchData()async{
//   final response =  await http.get(Uri.parse(jsonDataGHAPI));
//   return JsonFileData.fromJson(jsonDecode(response.body));
//
// }