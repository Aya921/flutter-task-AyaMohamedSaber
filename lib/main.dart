import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:otex_app/config/app_language_config/app_language_config.dart';
import 'package:otex_app/config/di/di.dart';
import 'package:otex_app/core/l10n/translations/app_localizations.dart';
import 'package:otex_app/core/responsive/size_helper_extension.dart';
import 'package:otex_app/core/responsive/size_provider.dart';
import 'package:otex_app/core/routes/routes.dart';
import 'package:otex_app/core/theme/app_theme.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await getIt.get<AppLanguageConfig>().setSelectedLocal();
  runApp(
    DevicePreview(
      builder: (context) => ChangeNotifierProvider.value(
        value: getIt.get<AppLanguageConfig>(),
        child: MyApp(),
      ),
    ),
  );
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  late AppLanguageConfig appLanguageConfig;

  @override
  Widget build(BuildContext context) {
    appLanguageConfig = Provider.of(context)!;
    return SizeProvider(
      baseSize: const Size(375, 812),
      height: context.screenHight,
      width: context.screenWidth,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(appLanguageConfig.selectedLocal),
        theme: AppTheme.lightTheme,
        onGenerateRoute: Routes.onGenerate,
    
        
      ),
    );
  }
}
