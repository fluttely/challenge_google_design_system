import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart' hide Icon, IconData, Text;
import 'package:google_app/google_app.dart';

class GoogleLeftSideBarTile extends StatefulWidget {
  const GoogleLeftSideBarTile({
    required this.icon,
    required this.title,
    super.key,
  });
  final material.IconData icon;
  final String title;

  @override
  State<GoogleLeftSideBarTile> createState() => _GoogleLeftSideBarTileState();
}

class _GoogleLeftSideBarTileState extends State<GoogleLeftSideBarTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return material.InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      onTap: () {
        setState(() {
          isSelected = true;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
          color: isSelected ? GoogleLightColors.seedColor : null,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Row(
          children: [
            GoogleIcon(widget.icon),
            const SizedBox(width: 16),
            GoogleText(widget.title),
          ],
        ),
      ),
    );
  }
}
