import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart' hide Text, Icon;
import 'package:google_app/google_app.dart';

class GoogleDriveBodyTile extends StatelessWidget {
  final bool isShared;
  final bool isSelected;
  final String folderName;
  final String folderOwnerName;
  final String dateFormatted;
  final String folderSizeFormatted;

  const GoogleDriveBodyTile({
    super.key,
    required this.isShared,
    required this.isSelected,
    required this.folderName,
    required this.folderOwnerName,
    required this.dateFormatted,
    required this.folderSizeFormatted,
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
      selected: isShared,
      selectedTileColor: GoogleColors.seedColor,
      tileColor: GoogleColors.bodyColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 18),
      title: Row(
        children: [
          material.Flexible(
            flex: 3,
            child: Row(children: [
              isShared
                  ? GoogleIcon.large(GoogleIcons.folder_shared_rounded)
                  : GoogleIcon.large(GoogleIcons.folder),
              const SizedBox(width: 12),
              GoogleText(folderName),
            ]),
          ),
          material.Flexible(
            flex: 3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GoogleText(folderOwnerName),
                  GoogleText(dateFormatted),
                ]),
          ),
          const Spacer(flex: 1),
          material.Flexible(
            flex: 2,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GoogleText(folderSizeFormatted),
                  GoogleIcon(GoogleIcons.more_vert),
                ]),
          ),
        ],
      ),
    );
  }
}
