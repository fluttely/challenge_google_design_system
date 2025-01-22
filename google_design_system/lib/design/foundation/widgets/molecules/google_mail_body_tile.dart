import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart' hide Icon, Text;
import 'package:google_design_system/google_design_system.dart';

class GoogleMailBodyTile extends StatelessWidget {
  const GoogleMailBodyTile({
    required this.subject,
    required this.description,
    required this.dateFormatted,
    required this.starred,
    super.key,
  });
  final String subject;
  final String description;
  final String dateFormatted;
  final bool starred;

  @override
  Widget build(BuildContext context) {
    return material.ListTile(
      shape: const material.Border.symmetric(
        horizontal: BorderSide(
          color: GoogleLightColors.lineColor,
          width: 0.5,
        ),
      ),
      tileColor: GoogleLightColors.bodyColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 18),
      dense: true,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (starred)
                const GoogleIcon(GoogleIcons.star)
              else
                const GoogleIcon(GoogleIcons.star_border_outlined),
              const SizedBox(width: 16),
              GoogleText(
                subject,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(width: 23),
              Expanded(
                child: GoogleText(
                  description,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GoogleText(
                dateFormatted,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          // Text(folderName),
          // Text(folderSizeFormatted),
        ],
      ),
    );
  }
}
