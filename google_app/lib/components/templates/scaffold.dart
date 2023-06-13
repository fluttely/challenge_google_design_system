import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' hide Text;
import 'package:google_app/google_app.dart';

class Scaffold extends StatelessWidget {
  final Image logo;
  final String title;

  final List<LeftSideBarTileModel> leftSideBarTileList;
  final List<BodyTile> bodyTileList;

  const Scaffold({
    super.key,
    required this.logo,
    required this.title,
    required this.leftSideBarTileList,
    required this.bodyTileList,
  });

  @override
  Widget build(BuildContext context) {
    return material.Scaffold(
      backgroundColor: Colors().canvasColor,
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
            child: LeftSideBar(
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {},
                label: 'New', // TODO
                icon: Icons().add,
                backgroundColor: Colors().bodyColor,
              ),
              leftSideBarTileList: leftSideBarTileList,
            ),
          ),
          Expanded(child: Body(bodyTileList: bodyTileList)),
        ],
      ),
    );
  }
}
