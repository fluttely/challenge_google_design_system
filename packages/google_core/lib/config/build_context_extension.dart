import 'package:flutter/widgets.dart';
import 'package:google_core/google_core.dart';
import 'package:google_design_system/google_design_system.dart';

extension BuildContextExtension on BuildContext {
  GoogleDesignSystem get designSystem => GoogleApp.of(this).designSystem;
  GoogleTheme get theme => GoogleApp.of(this).designSystem.theme;
  GoogleComponents get components => GoogleApp.of(this).designSystem.components;
}
