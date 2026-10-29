import 'package:flutter/services.dart';

class SoundHelper {
  static Future<void> playBeep() async {
    // System alert — works without any mp3
    SystemSound.play(SystemSoundType.alert);
  }

  static Future<void> playClick() async {
    SystemSound.play(SystemSoundType.click);
  }

  // For v1.1 — if you want custom 1s buzz, just add asset later
  static Future<void> playCustom() async {
    SystemSound.play(SystemSoundType.alert);
  }
}