import 'package:flutter/material.dart';
import 'package:google_design_system/google_design_system.dart';

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
    return ListTile(
      shape: const Border.symmetric(
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
          Flexible(
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
          Flexible(
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
          Flexible(
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
