import 'package:flutter/material.dart';

class MusicList extends StatefulWidget {
  const MusicList({super.key});

  @override
  State<MusicList> createState() => _MusicListState();
}

class _MusicListState extends State<MusicList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music List"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
           Navigator.pushNamed(context, '/player');
        },
        child: Icon(Icons.abc),
        ),
    );
  }
}