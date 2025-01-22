import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart' hide Text, Icon;
import 'package:google_app/google_app.dart';

class GoogleMailBodyTile extends StatelessWidget {
  final String subject;
  final String description;
  final String dateFormatted;
  final bool starred;

  const GoogleMailBodyTile({
    super.key,
    required this.subject,
    required this.description,
    required this.dateFormatted,
    required this.starred,
  });

  @override
  Widget build(BuildContext context) {
    return material.ListTile(
      shape: const material.Border.symmetric(
        horizontal: BorderSide(
          color: GoogleColors.lineColor,
          width: 0.5,
        ),
      ),
      tileColor: GoogleColors.bodyColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 18),
      dense: true,
      title: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              starred ? GoogleIcon(GoogleIcons.star) : GoogleIcon(GoogleIcons.star_border_outlined),
              const SizedBox(width: 16),
              GoogleText(
                subject,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(width: 23),
              Expanded(
                child: 
              GoogleText(
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
