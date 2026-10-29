import 'package:vibration/vibration.dart';
class VibrationHelper {
  static Future<void> ringDone() async {
    if (await Vibration.hasVibrator() == true) {
      Vibration.vibrate(pattern: [0, 500, 200, 1000]);
    }
  }
}
