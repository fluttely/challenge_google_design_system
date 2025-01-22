import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart' hide Icon, Text;
import 'package:google_app/google_app.dart';

class GoogleDriveBodyTile extends StatelessWidget {
  const GoogleDriveBodyTile({
    required this.isShared,
    required this.isSelected,
    required this.folderName,
    required this.folderOwnerName,
    required this.dateFormatted,
    required this.folderSizeFormatted,
    super.key,
  });
  final bool isShared;
  final bool isSelected;
  final String folderName;
  final String folderOwnerName;
  final String dateFormatted;
  final String folderSizeFormatted;

  @override
  Widget build(BuildContext context) {
    return material.ListTile(
      shape: const material.Border.symmetric(
        horizontal: BorderSide(
          color: GoogleLightColors.lineColor,
          width: 0.5,
        ),
      ),
      selected: isShared,
      selectedTileColor: GoogleLightColors.seedColor,
      tileColor: GoogleLightColors.bodyColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 18),
      title: Row(
        children: [
          material.Flexible(
            flex: 3,
            child: Row(
              children: [
                if (isShared)
                  GoogleIcon.large(GoogleIcons.folder_shared_rounded)
                else
                  GoogleIcon.large(GoogleIcons.folder),
                const SizedBox(width: 12),
                GoogleText(folderName),
              ],
            ),
          ),
          material.Flexible(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GoogleText(folderOwnerName),
                GoogleText(dateFormatted),
              ],
            ),
          ),
          const Spacer(),
          material.Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GoogleText(folderSizeFormatted),
                const GoogleIcon(GoogleIcons.more_vert),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
