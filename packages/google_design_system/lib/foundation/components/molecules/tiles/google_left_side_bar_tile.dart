import 'package:flutter/material.dart';
import 'package:google_design_system/google_design_system.dart';

enum GoogleLeftSideBarTileType {
  small,
  big,
}

class GoogleLeftSideBarTile extends StatefulWidget {
  const GoogleLeftSideBarTile({
    required this.icon,
    required this.title,
    this.tileType = GoogleLeftSideBarTileType.small,
    super.key,
  });

  final IconData icon;
  final String title;
  final GoogleLeftSideBarTileType tileType;

  @override
  State<GoogleLeftSideBarTile> createState() => _GoogleLeftSideBarTileState();
}

class _GoogleLeftSideBarTileState extends State<GoogleLeftSideBarTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final tileType = widget.tileType;

    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      onTap: () {
        setState(() {
          isSelected = true;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              tileType == GoogleLeftSideBarTileType.small ? 16 : 0,
            ),
            bottomLeft: Radius.circular(
              tileType == GoogleLeftSideBarTileType.small ? 16 : 0,
            ),
            topRight: const Radius.circular(16),
            bottomRight: const Radius.circular(16),
          ),
          color: isSelected ? GoogleLightColors.seedColor : null,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Row(
          children: [
            GoogleIcon(widget.icon),
            SizedBox(
              width: tileType == GoogleLeftSideBarTileType.small ? 16 : 32,
            ),
            GoogleText(
              widget.title,
              fontSize: tileType == GoogleLeftSideBarTileType.small ? 14 : 16,
              fontWeight: tileType == GoogleLeftSideBarTileType.small
                  ? FontWeight.normal
                  : FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
