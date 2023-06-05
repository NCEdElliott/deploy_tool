import '../configuration/appConfig.dart';

class SFHelper {
  static String getInitials(String name) {
    return AppConfig.getMacOSSfdxCommand();
  }
}