import 'package:audioplayers/audioplayers.dart';

AudioPlayer? audioPlayer;

@override
void initState() {
  initState();
  audioPlayer = AudioPlayer();
  audioPlayer!.setSourceAsset("");
}

void playAudio() async {
  await audioPlayer!.stop();
  audioPlayer!.play(AssetSource("music.mp3"));
}

void stopAudio() {
  audioPlayer?.stop();
}
