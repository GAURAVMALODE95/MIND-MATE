import 'package:flutter/material.dart';
import 'package:mind_mate/provider/geminiprovider.dart'; 
import 'package:mind_mate/screens/dashboard.dart';
import 'package:mind_mate/screens/profile.dart';
import 'package:mind_mate/screens/splash_screen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GeminiProvider()), // Provide GeminiProvider
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: AppBarTheme(
            color: Colors.black,
          ),
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          useMaterial3: true,
        ),
        home: SplashScreen(),
        routes: {
          '/profile': (context) => ProfilePage(),
        },
      ),
    );
  }
}
