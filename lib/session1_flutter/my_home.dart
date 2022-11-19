import 'package:flutter/material.dart';
//Scaffold
//AppBar
//SafeArea
//Text
//Column-Alignment
//Row-Alignment
//Container-BoxDecoration
//Expanded
//SizeBox
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            print('المنيو شغال يا كبير');
          },
          icon: const Icon(Icons.menu),
        ),
        title: const Text('My First App'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                print('النوتيفكيشن شغال يا كبير');
              },
              icon: const Icon(Icons.notifications))
        ],
      ),

      body:  Container(
        color: Colors.deepPurple,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>  [
            Text(
              'Hello Flutter',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.red),
            ),
            Text(
              'Hello Dart',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow),
            ),
            Text(
              'Hello Kotlin',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.grey),
            ),
            Text(
              'Hello Flutter',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.blue),
            ),
          ],
        ),
      )
    );
  }
}
