import 'package:http/http.dart' as http;
import 'dart:convert';
import '../services.model/GetFeaturedPostModel.dart';

Future<GetFeaturedPostModel> getFeaturedPost() async {
final response = await http.get('https://jsonplaceholder.typicode.com/posts/1');

if(response.statusCode == 200){
  return GetFeaturedPostModel.fromJson(json.decode(response.body));
} else {
   throw Exception("Failed To Load Post");
}
}