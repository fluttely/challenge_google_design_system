// Tile components
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_design_system/google_design_system.dart';

/// Factory class to create Google Design System tiles
class GoogleTiles {
  const GoogleTiles();

  /// Creates a Google Left Side Bar Tile
  ///
  /// Example:
  /// ```dart
  /// GoogleTiles.leftSideBar(
  ///   icon: GoogleIcons.folder,
  ///   title: 'My Drive',
  /// )
  /// ```
  static Widget leftSideBar({
    required IconData icon,
    required String title,
    Key? key,
    GoogleLeftSideBarTileType tileType = GoogleLeftSideBarTileType.small,
  }) {
    return GoogleLeftSideBarTile(
      key: key,
      icon: icon,
      title: title,
      tileType: tileType,
    );
  }

  /// Creates a Google Drive Body Tile
  ///
  /// Example:
  /// ```dart
  /// GoogleTiles.driveBody(
  ///   folderName: 'Documents',
  ///   folderOwnerName: 'me',
  ///   dateFormatted: '2024',
  ///   folderSizeFormatted: '1.5 GB',
  ///   isShared: false,
  ///   isSelected: false,
  /// )
  /// ```
  static Widget driveBody({
    required String folderName,
    required String folderOwnerName,
    required String dateFormatted,
    required String folderSizeFormatted,
    required bool isShared,
    required bool isSelected,
    Key? key,
  }) {
    return GoogleDriveBodyTile(
      key: key,
      folderName: folderName,
      folderOwnerName: folderOwnerName,
      dateFormatted: dateFormatted,
      folderSizeFormatted: folderSizeFormatted,
      isShared: isShared,
      isSelected: isSelected,
    );
  }

  /// Creates a Google Mail Body Tile
  ///
  /// Example:
  /// ```dart
  /// GoogleTiles.mailBody(
  ///   subject: 'Meeting',
  ///   description: 'Team sync at 3pm',
  ///   dateFormatted: 'Oct 1',
  ///   starred: true,
  /// )
  /// ```
  static Widget mailBody({
    required String subject,
    required String description,
    required String dateFormatted,
    required bool starred,
    Key? key,
  }) {
    return GoogleMailBodyTile(
      key: key,
      subject: subject,
      description: description,
      dateFormatted: dateFormatted,
      starred: starred,
    );
  }

  /// Returns a list of all available tile types for demo/testing purposes
  static List<Widget> allTypes() {
    return [
      leftSideBar(
        icon: Icons.folder,
        title: 'My Drive',
      ),
      driveBody(
        folderName: 'Documents',
        folderOwnerName: 'me',
        dateFormatted: '2024',
        folderSizeFormatted: '1.5 GB',
        isShared: false,
        isSelected: false,
      ),
      mailBody(
        subject: 'Meeting',
        description: 'Team sync',
        dateFormatted: 'Oct 1',
        starred: true,
      ),
    ];
  }

  /// Returns the list of available tile type names
  static List<String> get availableTypes => [
        'leftSideBar',
        'driveBody',
        'mailBody',
      ];
}
