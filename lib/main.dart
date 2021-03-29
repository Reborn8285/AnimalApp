import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(
  AnimalApp(),
);

class AnimalApp extends StatefulWidget {
  @override
  _AnimalsSoundAppState createState() => _AnimalsSoundAppState();
}

class _AnimalsSoundAppState extends State<AnimalApp> {

  Future<void> playAudio(bool isAudioPlaying) async {
    final player = AudioCache();
    AudioPlayer pl;

    pl = await player.play('thunder.wav');
    print(pl);
  }

  InkWell buttonImage({String image, String sound}) => InkWell(
    onTap: () {
      final player = AudioCache();
      player.play(sound);
    },
    child: Container(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
      color: Colors.white,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text("Animal app "),
            centerTitle: true,
          ),
          body: SafeArea(
              child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/anhnen.jpg'),
                      fit: BoxFit.cover),
                ),
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(30.0),
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                  crossAxisCount: 2,
                  children: <Widget>[
                    buttonImage(image: 'images/meo.jpg', sound: 'meo_keu.mp3' ),
                    buttonImage(image: 'images/ga.jpg', sound: 'ga_gay.mp3'),
                    buttonImage(image: 'images/cho.jpg', sound: 'cho_sua.mp3'),
                    buttonImage(image: 'images/bo.jpg', sound: 'bo_keu.mp3'),
                    buttonImage(image: 'images/de.jpg', sound: 'de_keu.mp3'),
                    buttonImage(image: 'images/ho.jpg', sound: 'ho_gam.mp3'),
                    buttonImage(image: 'images/lon.jpg', sound: 'lon_keu.mp3'),
                    buttonImage(image: 'images/ngua.jpg', sound: 'ngua_hi.mp3'),
                    buttonImage(image: 'images/vit.jpg', sound: 'vit_keu.mp3'),
                    buttonImage(image: 'images/sutu.jpg', sound: 'lion.wav'),
                  ],
                ),
              ))),
    );
  }
}
