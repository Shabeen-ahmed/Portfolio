
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'ThemeManager.dart';
import 'HomePage.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
  FlutterNativeSplash.remove();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }

  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     title: 'Flutter Developer Portfolio',
  //     // theme: ThemeData(
  //     //   textTheme: GoogleFonts.poppinsTextTheme(),
  //     //   primarySwatch: Colors.blue,
  //     //   visualDensity: VisualDensity.adaptivePlatformDensity,
  //     // ),
  //     // theme: CustomTheme.lightTheme,
  //     // darkTheme: CustomTheme.darkTheme,
  //     home: HomePage(),
  //   );
  // }
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Developer Portfolio',
          theme: themeProvider.themeData,
          darkTheme: CustomTheme.darkTheme,
          themeMode: themeProvider.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
          home: const HomePage(),
        );
      },
    );
  }
}


