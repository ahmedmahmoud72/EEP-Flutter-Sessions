import 'package:flutter/material.dart';

class FlutterImages extends StatelessWidget {
  const FlutterImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.separated(
            itemBuilder: (BuildContext context, index) => myImages( ),
            separatorBuilder: (BuildContext context, index) => const SizedBox(height: 10),
            itemCount: 5));
  }
}

Widget myImages() {
  return Column(
    children: [
      Image.network('https://images.pexels.com/photos/11982093/pexels-photo-11982093.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1.png'),
      Image.network('https://images.pexels.com/photos/5573154/pexels-photo-5573154.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1.png'),
      Image.network('https://images.pexels.com/photos/772667/pexels-photo-772667.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1.png'),
    ],
  );
}
