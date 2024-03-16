import 'package:flutter/material.dart';

class MusicList extends StatefulWidget {
  const MusicList({super.key});

  @override
  State<MusicList> createState() => _MusicListState();
}

class _MusicListState extends State<MusicList> {

  List Music=[
    {
      "path":"songs/Iraaday.mp3",
      "artist":"Abdul Hannan",
      "genre":"Romance, thrill",
      "thumbnail":"https://imgs.search.brave.com/NzzHI6R4o9LCBdqBLLLCA3VoLtSDfztoUtOsQjlrNFI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9kMWNz/YXJrejhvYmU5dS5j/bG91ZGZyb250Lm5l/dC9wb3N0ZXJwcmV2/aWV3cy9tdXNpYy1h/bmQtc2luZ2luZy1k/ZXNpZ24tdGVtcGxh/dGUtZGQyNmE4Y2Vh/MmMwMmI3ZWFlYmY4/ZTRiNTdmYTg4Mjcu/anBnP3RzPTE2Njcy/MTMzMjE"
    },
    {
      "path":"songs/Khoj Passing By.mp3",
      "artist":"Kala Hannan",
      "genre":"Romance",
      "thumbnail":"https://imgs.search.brave.com/NzzHI6R4o9LCBdqBLLLCA3VoLtSDfztoUtOsQjlrNFI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9kMWNz/YXJrejhvYmU5dS5j/bG91ZGZyb250Lm5l/dC9wb3N0ZXJwcmV2/aWV3cy9tdXNpYy1h/bmQtc2luZ2luZy1k/ZXNpZ24tdGVtcGxh/dGUtZGQyNmE4Y2Vh/MmMwMmI3ZWFlYmY4/ZTRiNTdmYTg4Mjcu/anBnP3RzPTE2Njcy/MTMzMjE"
    },
    {
      "path":"songs/Khoj Passing By.mp3",
      "artist":"Abdul Hannan",
      "genre":"Romance",
      "thumbnail":"https://imgs.search.brave.com/NzzHI6R4o9LCBdqBLLLCA3VoLtSDfztoUtOsQjlrNFI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9kMWNz/YXJrejhvYmU5dS5j/bG91ZGZyb250Lm5l/dC9wb3N0ZXJwcmV2/aWV3cy9tdXNpYy1h/bmQtc2luZ2luZy1k/ZXNpZ24tdGVtcGxh/dGUtZGQyNmE4Y2Vh/MmMwMmI3ZWFlYmY4/ZTRiNTdmYTg4Mjcu/anBnP3RzPTE2Njcy/MTMzMjE"
    },
    {
      "path":"songs/Khoj Passing By.mp3",
      "artist":"Abdul Hannan",
      "genre":"Romance",
      "thumbnail":"https://imgs.search.brave.com/NzzHI6R4o9LCBdqBLLLCA3VoLtSDfztoUtOsQjlrNFI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9kMWNz/YXJrejhvYmU5dS5j/bG91ZGZyb250Lm5l/dC9wb3N0ZXJwcmV2/aWV3cy9tdXNpYy1h/bmQtc2luZ2luZy1k/ZXNpZ24tdGVtcGxh/dGUtZGQyNmE4Y2Vh/MmMwMmI3ZWFlYmY4/ZTRiNTdmYTg4Mjcu/anBnP3RzPTE2Njcy/MTMzMjE"
    },
    {
      "path":"songs/Khoj Passing By.mp3",
      "artist":"Abdul Hannan",
      "genre":"Romance",
      "thumbnail":"https://imgs.search.brave.com/NzzHI6R4o9LCBdqBLLLCA3VoLtSDfztoUtOsQjlrNFI/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9kMWNz/YXJrejhvYmU5dS5j/bG91ZGZyb250Lm5l/dC9wb3N0ZXJwcmV2/aWV3cy9tdXNpYy1h/bmQtc2luZ2luZy1k/ZXNpZ24tdGVtcGxh/dGUtZGQyNmE4Y2Vh/MmMwMmI3ZWFlYmY4/ZTRiNTdmYTg4Mjcu/anBnP3RzPTE2Njcy/MTMzMjE"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music List"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: Music.length,
          itemBuilder: (context, index) {
            return Container(
              child: Row(
                children: [
                  Image.network(Music[index]["thumbnail"], width: 60,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(children: [
                          Text(Music[index]["artist"], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          Text(Music[index]["genre"]),
                        ],),
                      ),
                      CircleAvatar(
                        child: IconButton(onPressed: (){Navigator.pushNamed(context, '/player', arguments:{'index': index});}, icon: Icon(Icons.play_arrow)),
                      )
                    ],
                  ),
                ]),
            );
          },)
        ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //      Navigator.pushNamed(context, '/player');
      //   },
      //   child: Icon(Icons.abc),
      //   ),
    );
  }
}