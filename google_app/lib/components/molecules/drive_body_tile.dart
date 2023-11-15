import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart' hide Text, Icon;
import 'package:google_app/google_app.dart';

class DriveBodyTile extends StatelessWidget {
  final bool isShared;
  final bool isSelected;
  final String folderName;
  final String folderOwnerName;
  final String dateFormatted;
  final String folderSizeFormatted;

  const DriveBodyTile({
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
      shape: material.Border.symmetric(
        horizontal: BorderSide(
          color: Colors.lineColor,
          width: 0.5,
        ),
      ),
      selected: isShared,
      selectedTileColor: Colors.seedColor,
      tileColor: Colors.bodyColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 18),
      title: Row(
        children: [
          material.Flexible(
            flex: 3,
            child: Row(children: [
              isShared
                  ? Icon.large(Icons.folder_shared_rounded)
                  : Icon.large(Icons.folder),
              const SizedBox(width: 12),
              Text(folderName),
            ]),
          ),
          material.Flexible(
            flex: 3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(folderOwnerName),
                  Text(dateFormatted),
                ]),
          ),
          const Spacer(flex: 1),
          material.Flexible(
            flex: 2,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(folderSizeFormatted),
                  Icon(Icons.more_vert),
                ]),
          ),
        ],
      ),
    );
  }
}
