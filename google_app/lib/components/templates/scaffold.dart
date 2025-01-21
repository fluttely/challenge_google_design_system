import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' hide Text;
import 'package:google_app/google_app.dart';

class Scaffold extends StatelessWidget {
  final Image logo;
  final String title;
  final LeftSideBar leftSideBar;
  final List<Widget> bodyTileList;

  const Scaffold({
    super.key,
    required this.logo,
    required this.title,
    required this.leftSideBar,
    required this.bodyTileList,
  });

  @override
  Widget build(BuildContext context) {
    return material.Scaffold(
      backgroundColor: ColorsUtils.canvasColor,
      appBar: AppBar(
        image: SizedBox(height: 40, child: logo),
        title: title,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 216, // TODO
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
            child: leftSideBar,
          ),
          Expanded(child: Body(bodyTileList: bodyTileList)),
        ],
      ),
    );
  }
}
