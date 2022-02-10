import 'dart:io';
import 'dart:async';
import 'package:untitled7/models/Player.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiPlayer{
  String baseUrl = "https://api.clashroyale.com/v1/players/";
  String apiKey;
  ApiPlayer({required this.apiKey});

  Future<Player?> getPlayerFromAdress(String tag) async {
    String url = "${baseUrl}%23${tag}";
    print(url);
    final response = await http.get(
      Uri.parse(url),

      headers : {
        HttpHeaders.acceptHeader: 'application/json',
        HttpHeaders.authorizationHeader :
        'Bearer $apiKey',
      },
    );
    print(response.statusCode);
    if(response.statusCode == 200){
      Player.getDeck(jsonDecode(response.body));
      return  Player.FromJson(jsonDecode(response.body));
    }
    return null;
  }


}