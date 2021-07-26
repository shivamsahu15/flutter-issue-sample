import 'package:flutter/material.dart';
import 'package:gallery/image_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return ImageScreenButton(index: index);
    }, itemCount: 10);
  }
}

class ImageScreenButton extends StatelessWidget {
  final int index;

  const ImageScreenButton({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ImageScreen(screenIndex: index,)));
          },
          child: Text('Image List $index')),
    );
  }
}
