import 'dart:io';
import 'package:deploy_tool/configuration/appConfig.dart';

class shellHelper {
  static String retrieveMetadata() {
    String output = "";
    Directory.current = Directory(AppConfig.getMacOSWorkingDir() + "/TestProject");

    Process.run('ls', ['-l'], 
                runInShell: true,
                workingDirectory: AppConfig.getMacOSWorkingDir()).then((ProcessResult results) {
      print('Current Working Dir: ' + AppConfig.getMacOSWorkingDir());
      print('Exit Code: ' + results.exitCode.toString());
      print('Output: ' + results.stdout.toString());
      print('Error: ' + results.stderr.toString());
      output = results.stdout.toString();
    });

    return output;
  }
}