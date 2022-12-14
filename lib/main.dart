import 'package:beginner/models/main_provider.dart';
import 'package:beginner/scr/detalis/deatlis.dart';
import 'package:beginner/scr/ui/homepage.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: [
      Locale('uz', 'UZ'),
      Locale('ru', 'RU'),
      Locale('en', 'US'),
    ],
      fallbackLocale: Locale('en', 'US'),
      path:"assets/translates",
      child: MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => Mainprovider()),
      ],child: MyApp())));

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Restaruant shashlik",
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Monterey"),
      home: Homepage(),
    );
  }
}
