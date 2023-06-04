import '../configuration/app_config.dart';

class SFHelper {
  static String getInitials(String name) {
    return AppConfig.getMacOSSfdxCommand();
  }
}