class Cards{
  int id;
  String name;
  int level;
  String iconUrl;
  Cards({
    this.id = 0,
    required this.name,
    required this.level,
    required this.iconUrl
  });
  static Cards FromJson(Map<String, dynamic> json){
    return Cards(
        name: json["currentDeck"][0]["name"],
        level: int.tryParse(json["currentDeck"][0]["level"].toString()) ?? 0,
        iconUrl: json["currentDeck"][0]["iconUrls"]
    );
  }
}