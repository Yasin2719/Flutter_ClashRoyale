import 'package:flutter/material.dart';
import 'package:untitled7/api/api_player.dart';
import 'package:untitled7/models/Player.dart';
import 'package:untitled7/pages/page_home.dart';

void main() async {

  ApiPlayer apiPlayer = ApiPlayer(apiKey: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6IjQ5Zjc2MzFmLWYxYTAtNGFhMC1iNGNlLWJmNzc5Njk5ZTBiYSIsImlhdCI6MTY0NDQyOTMxNywic3ViIjoiZGV2ZWxvcGVyLzc1ZGIxOWY5LTBmM2MtNDNhMy0wZmEzLWVhODExMmVmZTM4ZCIsInNjb3BlcyI6WyJyb3lhbGUiXSwibGltaXRzIjpbeyJ0aWVyIjoiZGV2ZWxvcGVyL3NpbHZlciIsInR5cGUiOiJ0aHJvdHRsaW5nIn0seyJjaWRycyI6WyIxNzYuMTM1LjI0NS45MyJdLCJ0eXBlIjoiY2xpZW50In1dfQ.smNETVuYuMF7vEgxJr7ryNYq9rmZzXvvdKCxZAfeW8538vEjVQWKldneONXr2TAJ46u4ycREbtDq8B4uEYTy9g");
  Player? player = await apiPlayer.getPlayerFromAdress("L8JYGQGG");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Player Stats',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),
    );
  }
}



