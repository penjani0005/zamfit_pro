import 'package:vibration/vibration.dart';
import 'package:audioplayers/audioplayers.dart';
import '../constants/app_assets.dart';

class HapticHelper {
  static final _player = AudioPlayer();

  static Future<void> onTimerComplete() async {
    try {
      await _player.play(AssetSource(AppAssets.beepSound));
    } catch (_) {}
    if (await Vibration.hasVibrator() == true) {
      Vibration.vibrate(pattern: [0, 500, 200, 500], amplitude: 128);
    }
  }

  static Future<void> lightImpact() async {
    if (await Vibration.hasVibrator() == true) {
      Vibration.vibrate(duration: 50);
    }
  }
}