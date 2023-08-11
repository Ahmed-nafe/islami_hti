import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_hti/app_theme.dart';
import 'package:islami_hti/providers/app_provider.dart';
import 'package:islami_hti/screens/hadeth_details/hadeth_details.dart';
import 'package:islami_hti/screens/home/home.dart';
import 'package:islami_hti/screens/sura_details/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => AppProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of(context);
    return MaterialApp(
      routes: {
        Home.routeName : (_) => Home(),
        SuraDetails.routeName : (_) => SuraDetails(),
        HadethDetails.routeName: (_) => HadethDetails()
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [
        Locale("en"),
        Locale("ar")
      ],
      locale: Locale(provider.isArEnabled ? "ar" : "end"),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: provider.isDarkThemeEnabled ? ThemeMode.dark : ThemeMode.light,
      initialRoute: Home.routeName,
    );
  }
}