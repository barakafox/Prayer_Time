import 'package:flutter/material.dart';
import 'package:prayer_time_revision/Provider/prayer_provider.dart';
import 'package:prayer_time_revision/Screen/prayer_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => PrayerProvider(),)
    ],
     child: MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Prayer Time',
      home: HomeScreen(),
    ),
    );
  }
}
