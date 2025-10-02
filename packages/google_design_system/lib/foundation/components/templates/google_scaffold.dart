import 'package:flutter/material.dart';
import 'package:google_design_system/google_design_system.dart';

class GoogleScaffold extends StatelessWidget {
  const GoogleScaffold({
    required this.logo,
    required this.title,
    required this.barHintText,
    required this.leftSideBar,
    required this.bodyTileList,
    this.haveHottomDivider = false,
    super.key,
  });

  final Image logo;
  final String title;
  final String barHintText;
  final bool haveHottomDivider;
  final GoogleLeftSideBar leftSideBar;
  final List<Widget> bodyTileList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GoogleLightColors.canvasColor,
      appBar: GoogleAppBar(
        image: SizedBox(height: 40, child: logo),
        title: title,
        barHintText: barHintText,
        haveHottomDivider: haveHottomDivider,
      ),
      body: Row(
        children: <Widget>[
          leftSideBar,
          Expanded(child: GoogleBody(bodyTileList: bodyTileList)),
        ],
      ),
    );
  }
}
