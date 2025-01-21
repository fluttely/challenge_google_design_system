import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart' hide Text, Icon;
import 'package:google_app/google_app.dart';

class LeftSideBarTile extends StatefulWidget {
  final IconData icon;
  final String title;

  const LeftSideBarTile({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  State<LeftSideBarTile> createState() => _LeftSideBarTileState();
}

class _LeftSideBarTileState extends State<LeftSideBarTile> {
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
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          color: isSelected ? ColorsUtils.seedColor : null,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Row(
          children: [
            Icon(widget.icon),
            const SizedBox(width: 16),
            Text(widget.title),
          ],
        ),
      ),
    );
  }
}
