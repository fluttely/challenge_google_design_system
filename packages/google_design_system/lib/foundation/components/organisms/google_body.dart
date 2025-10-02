import 'package:flutter/material.dart';
import 'package:google_design_system/google_design_system.dart';

class GoogleBody extends StatelessWidget {
  const GoogleBody({
    required this.bodyTileList,
    super.key,
  });
  final List<Widget> bodyTileList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 0, 14, 4),
      child: Card(
        elevation: 0,
        color: GoogleLightColors.bodyColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
          child: Column(
            children: [
              Row(
                children: [
                  const Spacer(),
                  IconButton(
                    icon: const Icon(
                      GoogleIcons.label_off_outlined,
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 4),
                  IconButton(
                    icon: const Icon(
                      GoogleIcons.backup_sharp,
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 4),
                  IconButton(
                    icon: const Icon(
                      GoogleIcons.info_outline_rounded,
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Expanded(
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
