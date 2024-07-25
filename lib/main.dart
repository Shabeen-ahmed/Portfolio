import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolioo/SplashScreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'ThemeManager.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  print('here 1');
  print('here 1');
  print('here 1');
  print('here 1');
  print('here 1');
  print('here 1');
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
  // bool _imagesPrecached = false;
  // final Completer<void> _imageCacheCompleter = Completer<void>();

  @override
  void initState() {
    print('here 2');
    print('here 2');

    print('here 2');
    print('here 2');
    print('here 2');
    super.initState();
    print('here 3');
    print('here 3');
    print('here 3');
    // _precacheImages().then((_) {
    //   setState(() {
    //     _imagesPrecached = true;
    //   });
    // });
    initialization();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   _precacheImages().then((_) {
    //     if (!_imageCacheCompleter.isCompleted) {
    //       _imageCacheCompleter.complete();
    //     }
    //   });
    // });
    print('here 4');
    print('here 4');
    print('here 4');
  }

  // Future<void> _precacheImages() async {
  //   await Future.wait([
  //     precacheImage(AssetImage('assets/images/gold.jpeg'), context),
  //     precacheImage(AssetImage('assets/images/blue.jpeg'), context),
  //     precacheImage(AssetImage('assets/gradientbg.png'), context),
  //   ]);
  // }

  void initialization() async {
    // print('ready in 3...');
    // await Future.delayed(const Duration(seconds: 1));
    // print('ready in 2...');
    // await Future.delayed(const Duration(seconds: 1));
    // print('ready in 1...');
    // await Future.delayed(const Duration(seconds: 1));
    // print('go!');
    // precacheImage(AssetImage('assets/images/gold.jpeg'), context);
    // precacheImage(AssetImage('assets/images/blue.jpeg'), context);
    // precacheImage(AssetImage('assets/gradientbg.png'), context);
    precacheImage(AssetImage('assets/images/gold.jpeg'), context);
    precacheImage(AssetImage('assets/images/blue.jpeg'), context);
    precacheImage(AssetImage('assets/gradientbg.png'), context);
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
    // precacheImage(AssetImage('assets/images/gold.jpeg'), context);
    // precacheImage(AssetImage('assets/images/blue.jpeg'), context);
    // precacheImage(AssetImage('assets/gradientbg.png'), context);
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Mohamed's Portfolio",
            theme: themeProvider.themeData,
            darkTheme: CustomTheme.darkTheme,
            themeMode: themeProvider.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
            home:
            // _imagesPrecached
            //     ? HomePage()
            //     :
            Splashscreen(
              // onReady: () {
              //   if (_imagesPrecached) {
              //     FlutterNativeSplash.remove();
              //   }
              // },
            ),
        //     Splashscreen(
        //     onReady: ()
        // {
        //   _imageCacheCompleter.future.then((_) {
        //     FlutterNativeSplash.remove();
        //     Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        //   });
        // })
        );
      },
    );
  }
}


