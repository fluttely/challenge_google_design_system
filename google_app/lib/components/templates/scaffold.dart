import 'package:flutter/material.dart' as material hide IconData;
import 'package:flutter/widgets.dart' hide Text;
import 'package:google_app/components/molecules/body_tile.dart';
import 'package:google_app/components/organisms/left_side_bar.dart';
import 'package:google_app/google_app.dart';

final leftSideBarTileList = [
  LeftSideBarTileModel(
    icon: Icons().add_to_drive_outlined,
    title: 'My Drive',
  ),
  LeftSideBarTileModel(
    icon: Icons().computer,
    title: 'Computers',
  ),
  LeftSideBarTileModel(
    icon: Icons().people_alt_outlined,
    title: 'Shared With Me',
  ),
  LeftSideBarTileModel(
    icon: Icons().star_border_outlined,
    title: 'Starred',
  ),
  LeftSideBarTileModel(
    icon: Icons().report_outlined,
    title: 'Spam',
  ),
  LeftSideBarTileModel(
    icon: Icons().delete_outline_rounded,
    title: 'Trash',
  ),
];

class Scaffold extends StatelessWidget {
  final Image logo;
  final String title;
  final List<BodyTile> bodyList;

  const Scaffold({
    super.key,
    required this.logo,
    required this.title,
    required this.bodyList,
  });

  @override
  Widget build(BuildContext context) {
    return material.Scaffold(
      backgroundColor: Colors().canvasColor,
      appBar: AppBar(
        image: SizedBox(height: 40, child: logo),
        title: Text(title),
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
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors().bodyColor,
                borderRadius: const BorderRadius.all(Radius.circular(16)),
              ),
              child: Container(),
            ),
          ),
        ],
      ),
    );
  }
}
