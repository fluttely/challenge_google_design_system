import 'package:flutter/widgets.dart' as widgets;
import 'package:google_design_system/google_design_system.dart';

extension BuildContextExtension on widgets.BuildContext {
  GoogleComponents get widgets => GoogleApp.of(this).designSystem.components;
  GoogleTheme get theme => GoogleApp.of(this).designSystem.theme;
}
