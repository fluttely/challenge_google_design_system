import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart' hide Text;
import 'package:google_app/google_app.dart';

class GoogleBody extends StatelessWidget {
  final List<Widget> bodyTileList;

  const GoogleBody({
    super.key,
    required this.bodyTileList,
  });

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
        color: GoogleColors.bodyColor,
        child: material.Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18.0),
          child: material.Column(
            children: [
              material.Row(
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
