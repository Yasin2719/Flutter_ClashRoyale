import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:untitled7/api/api_player.dart';
import 'package:untitled7/models/Player.dart';

class PageInfos extends StatefulWidget {
  final String UserTag;
  const PageInfos({Key? key, required this.UserTag}) : super(key: key);

  @override
  _PageInfosState createState() => _PageInfosState();
}

class _PageInfosState extends State<PageInfos> {

  Player? CurrentUser;
  @override
  void initState(){
    getUser(widget.UserTag);
    super.initState();
  }

  Future<void> getUser(String tag) async{
    ApiPlayer apiPlayer = ApiPlayer(apiKey: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6IjQ5Zjc2MzFmLWYxYTAtNGFhMC1iNGNlLWJmNzc5Njk5ZTBiYSIsImlhdCI6MTY0NDQyOTMxNywic3ViIjoiZGV2ZWxvcGVyLzc1ZGIxOWY5LTBmM2MtNDNhMy0wZmEzLWVhODExMmVmZTM4ZCIsInNjb3BlcyI6WyJyb3lhbGUiXSwibGltaXRzIjpbeyJ0aWVyIjoiZGV2ZWxvcGVyL3NpbHZlciIsInR5cGUiOiJ0aHJvdHRsaW5nIn0seyJjaWRycyI6WyIxNzYuMTM1LjI0NS45MyJdLCJ0eXBlIjoiY2xpZW50In1dfQ.smNETVuYuMF7vEgxJr7ryNYq9rmZzXvvdKCxZAfeW8538vEjVQWKldneONXr2TAJ46u4ycREbtDq8B4uEYTy9g");
    CurrentUser = await apiPlayer.getPlayerFromAdress(widget.UserTag);
    print(CurrentUser);
    if(CurrentUser != null){
      print("User Found");
      print(CurrentUser!.nom);
      print(CurrentUser!.arene);
      print(CurrentUser!.nomClan);
      print(CurrentUser!.trophees);
      print(CurrentUser!.wins);
      print(CurrentUser!.lose);
      print(CurrentUser!.xp);

    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info Players", style: TextStyle(color: Color(0xFFFFC107)),),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: 500,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.8, 0),
                        child: Text(
                          'Player Tag: ${widget.UserTag}',
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            'Name: ',
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(-0.1, 0),
                            child: Text(
                              'Nom Clan: ',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            'Trophés:',
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(-0.1, 0),
                            child: Text(
                              'Arene:',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            'Wins:',
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(-0.1, 0),
                            child: Text(
                              'Loses:',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: ExpandableNotifier(
                        initialExpanded: false,
                        child: ExpandablePanel(
                          header: Text(
                            'Deck Courrant',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                          ),
                          collapsed: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                          ),
                          expanded: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2, 0, 2, 0),
                                    child: Image.network(
                                      'https://api-assets.clashroyale.com/cards/300/ho0nOG2y3Ch86elHHcocQs8Fv_QNe0cFJ2CijsxABZA.png',
                                      width: 90,
                                      height: 115,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 2, 0),
                                    child: Image.network(
                                      'https://api-assets.clashroyale.com/cards/300/tN9h6lnMNPCNsx0LMFmvpHgznbDZ1fBRkx-C7UfNmfY.png',
                                      width: 90,
                                      height: 115,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 2, 0),
                                    child: Image.network(
                                      'https://api-assets.clashroyale.com/cards/300/BmpK3bqEAviflqHCdxxnfm-_l3pRPJw3qxHkwS55nCY.png',
                                      width: 90,
                                      height: 115,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Image.network(
                                    'https://api-assets.clashroyale.com/cards/300/lZD9MILQv7O-P3XBr_xOLS5idwuz3_7Ws9G60U36yhc.png',
                                    width: 90,
                                    height: 115,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2, 0, 2, 0),
                                    child: Image.network(
                                      'https://api-assets.clashroyale.com/cards/300/0p0gd0XaVRu1Hb1iSG1hTYbz2AN6aEiZnhaAib5O8Z8.png',
                                      width: 90,
                                      height: 115,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2, 0, 2, 0),
                                    child: Image.network(
                                      'https://api-assets.clashroyale.com/cards/300/QZfHRpLRmutZbCr5fpLnTpIp89vLI6NrAwzGZ8tHEc4.png',
                                      width: 90,
                                      height: 115,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 2, 0),
                                    child: Image.network(
                                      'https://api-assets.clashroyale.com/cards/300/RsFaHgB3w6vXsTjXdPr3x8l_GbV9TbOUCvIx07prbrQ.png',
                                      width: 90,
                                      height: 115,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 2, 0),
                                    child: Image.network(
                                      'https://api-assets.clashroyale.com/cards/300/p7OQmOAFTery7zCzlpDdm-LOD1kINTm42AwIHchZfWk.png',
                                      width: 90,
                                      height: 115,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          theme: ExpandableThemeData(
                            tapHeaderToExpand: true,
                            tapBodyToExpand: false,
                            tapBodyToCollapse: false,
                            headerAlignment:
                            ExpandablePanelHeaderAlignment.center,
                            hasIcon: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
