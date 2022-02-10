import 'dart:convert';

import 'package:untitled7/models/Cards.dart';

class Player{
  String tag;
  String nom;
  int xp;
  int trophees;
  int wins;
  int lose;
  String nomClan;
  String arene;
  /*Map<String, dynamic> card;*/
  Player({required this.tag ,
    required this.nom,
    required this.xp,
    required this.trophees,
    required this.wins,
    required this.lose,
    required this.nomClan,
    required this.arene,
    /*required this.card,*/
  }
  );

  static getDeck(Map<String, dynamic> json) async {
    List<Cards> deck;
    List<dynamic>? deckJson = json["currentDeck"];

    deckJson!.forEach((element) {

      (element as Map<String, dynamic>).forEach((key, value) {
        Cards card = Cards(name: element["id"].toString(), level: element["level"], iconUrl: element["iconUrls"]["medium"]);
        print('${key},${value}');
        print(card.id);
        print(card.level);
        print(card.iconUrl);

      });
    });
    return;
  }

  static Player FromJson(Map<String, dynamic> json){
    return Player(
      tag: json["tag"],
      nom: json["name"],
      xp: int.tryParse(json["expLevel"].toString()) ?? 0,
      trophees: int.tryParse(json["trophies"].toString()) ?? 0,
      wins: int.tryParse(json["wins"].toString()) ?? 0,
      lose: int.tryParse(json["losses"].toString()) ?? 0 ,
      nomClan: json["clan"]["name"] ?? 0,
      arene: json["arena"]["name"],

    )
    ;}

}