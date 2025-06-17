import 'package:flutter/material.dart';
import 'package:p_00/widgets/profile_card.dart';

void main() {
  // runApp(MaterialApp(home: Text("My App"),));
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  // const MyApp({Key? key}):super(key: key);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        scaffoldBackgroundColor: Colors.red.shade400,
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          foregroundColor: Colors.white,
          title: const Center(
            child: Text("My First App...",style: TextStyle(fontSize: 20),),
          ),
        ),
        body: const SafeArea(
          child: ProfileCard(),
        ),
      ),
    );
  }
}
