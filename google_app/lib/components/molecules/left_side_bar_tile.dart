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
  bool isHover = false;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return material.InkWell(
      onTap: () {
        isSelected = true;
      },
      child: MouseRegion(
        onEnter: (_) => setState(() {
          isHover = true;
        }),
        onExit: (_) => setState(() {
          isHover = false;
        }),
        child: Container(
          color: isSelected
              ? Colors().seedColor
              : isHover
                  ? Colors().disabledColor
                  : null,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Icon(widget.icon),
              const SizedBox(width: 16),
              Text(widget.title),
            ],
          ),
        ),
      ),
    );
  }
}
