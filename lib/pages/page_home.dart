import 'package:flutter/material.dart';
import 'package:untitled7/pages/page_Infos.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  String? text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
        'Player Stats',
        style: TextStyle(color: Color(0xFFFFC107))
    ),
      ),
      body: Center(
        child: Column(
          children: [
            Align(
            alignment: AlignmentDirectional(0, 0),
            child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Container(
            width: 390,
            height: 200,
            decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
            ),
            child: Align(
            alignment: AlignmentDirectional(0, 0.05),
            child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Image.network(
            'https://www.pedagojeux.fr/wp-content/uploads/2020/06/image-clash-royale.jpg',
            width: 390,
            height: 200,
            fit: BoxFit.cover,
            ),
            ),
            ),
            ),
            ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.05),
              child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 300),
              child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Align(
              alignment: AlignmentDirectional(-0.5, 0.05),
              child: Padding(
              padding:
              EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: Text(
              'Entrer Votre Tag\nClashRoyale',
              style: TextStyle(
              fontFamily: 'Poppins',
              color: Color(0xFF1565C0),
              fontWeight: FontWeight.bold,
              ),
              ),
              ),
              ),
              Expanded(
              child: Align(
              alignment: AlignmentDirectional(0, 0.05),
              child: Padding(
              padding:
              EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
              child: TextFormField(
              obscureText: false,
              decoration: InputDecoration(
              hintText: '    EX: #AAAAAAA',
              enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
              color: Colors.black,
              width: 1,
              ),
              borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
              ),
              ),
              focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
              color: Colors.black,
              width: 1,
              ),
              borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
              ),
              ),
              ),
                onChanged: (String value){
                setState(() {
                  text = value;
                });
                },
              ),
              ),
              ),
              ),
                Align(
                  alignment: AlignmentDirectional(-0.05, 0.05),
                  child: Padding(
                    padding:
                    EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                    child: IconButton(
                      color: Colors.blue,
                      icon: Icon(
                        Icons.check,
                        color: Color(0xFF1565C0),
                        size: 30,
                      ),
                      onPressed: () {
                        if (text != null && text != "") {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext buildContext) {
                              print('${text}');
                                return PageInfos(UserTag: text!);
                              }));
                        }else{
                          setState(() {
                            text = null;
                          });
                        }
                      }

                    ),
                  ),
                ),
          ],

        ),

      )
            )

    ]
    )
    )
      );
  }
}
