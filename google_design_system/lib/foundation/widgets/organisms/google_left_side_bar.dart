// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:google_design_system/google_design_system.dart';

class LeftSideBarTileModel {
  final IconData icon;
  final String title;

  LeftSideBarTileModel({
    required this.icon,
    required this.title,
  });
}

class GoogleLeftSideBar extends StatelessWidget {
  const GoogleLeftSideBar({
    required this.floatingActionButton,
    required this.leftSideBarTileList,
    this.tileType = GoogleLeftSideBarTileType.small,
    super.key,
  });

  final GoogleFloatingActionButton floatingActionButton;
  final List<LeftSideBarTileModel> leftSideBarTileList;
  final GoogleLeftSideBarTileType tileType;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 216, // TODO
      padding: EdgeInsets.fromLTRB(
        tileType == GoogleLeftSideBarTileType.small ? 16 : 0,
        4,
        16,
        16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          floatingActionButton,
          const SizedBox(height: 16),
          ...leftSideBarTileList.map(
            (element) => GoogleLeftSideBarTile(
              icon: element.icon,
              title: element.title,
              tileType: tileType,
            ),
          ),
        ],
      ),
    );
  }
}
