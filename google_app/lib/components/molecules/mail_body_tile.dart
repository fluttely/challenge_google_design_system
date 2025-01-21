import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart' hide Text, Icon;
import 'package:google_app/google_app.dart';

class MailBodyTile extends StatelessWidget {
  final String subject;
  final String description;
  final String dateFormatted;
  final bool starred;

  const MailBodyTile({
    super.key,
    required this.subject,
    required this.description,
    required this.dateFormatted,
    required this.starred,
  });

  @override
  Widget build(BuildContext context) {
    return material.ListTile(
      shape: material.Border.symmetric(
        horizontal: BorderSide(
          color: ColorsUtils.lineColor,
          width: 0.5,
        ),
      ),
      tileColor: ColorsUtils.bodyColor,
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
              starred ? Icon(Icons.star) : Icon(Icons.star_border_outlined),
              const SizedBox(width: 16),
              Text(
                subject,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(width: 23),
              Expanded(
                child: 
              Text(
                description,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text(
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
