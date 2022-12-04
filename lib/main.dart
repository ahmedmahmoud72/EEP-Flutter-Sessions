import 'package:flutter/material.dart';
import 'package:ieee_session6/session3_flutter/my_bottonnavbar.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(

      debugShowCheckedModeBanner: false,
      home: MyWidgets(),
      );
  }
}
