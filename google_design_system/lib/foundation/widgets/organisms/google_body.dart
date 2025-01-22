import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart' hide Text;
import 'package:google_design_system/google_design_system.dart';

class GoogleBody extends StatelessWidget {
  const GoogleBody({
    required this.bodyTileList,
    super.key,
  });
  final List<Widget> bodyTileList;

  @override
  Widget build(BuildContext context) {
    return material.Padding(
      padding: const material.EdgeInsets.fromLTRB(
        14,
        0,
        14,
        4,
      ),
      child: material.Card(
        elevation: 0,
        color: GoogleLightColors.bodyColor,
        child: material.Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
          child: material.Column(
            children: [
              ColoredBox(
                color: GoogleLightColors.pink,
                child: material.Row(
                  children: [
                    const material.Spacer(),
                    material.IconButton(
                      icon: const material.Icon(
                        GoogleIcons.label_off_outlined,
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                    const material.SizedBox(width: 4),
                    material.IconButton(
                      icon: const material.Icon(
                        GoogleIcons.backup_sharp,
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                    const material.SizedBox(width: 4),
                    material.IconButton(
                      icon: const material.Icon(
                        GoogleIcons.info_outline_rounded,
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              const material.SizedBox(height: 24),
              material.Expanded(
                child: ListView(
                  children: bodyTileList.map((element) => element).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
