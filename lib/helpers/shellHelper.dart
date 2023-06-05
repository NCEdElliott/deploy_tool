import 'dart:io';

class shellHelper {
  static String getInitials(String name) {
    return Platform.isMacOS ? 'sf' : 'sfdx';
  }
}