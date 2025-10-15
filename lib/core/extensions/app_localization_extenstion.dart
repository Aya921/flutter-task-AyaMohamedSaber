import 'package:flutter/material.dart';
import 'package:otex_app/core/l10n/translations/app_localizations.dart';

extension AppLocalizationExtenstion on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this)!; 
}
