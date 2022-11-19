import 'package:flutter/material.dart';

import 'my_counter.dart';
import 'my_home.dart';

main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyCounter() ,
    );
  }

}
