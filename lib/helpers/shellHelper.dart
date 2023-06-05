import 'dart:io';
import 'package:deploy_tool/configuration/appConfig.dart';

class shellHelper {
  static String retrieveMetadata() {
    String output = "";
    Directory workingDir = Directory(AppConfig.getMacOSWorkingDir() + "/TestProject");

    Process.run('ls', ['-l'], 
                runInShell: true,
                workingDirectory: workingDir.path.toString())
            .then((ProcessResult results) {
      print('Current Working Dir: ' + workingDir.path.toString());
      print('Exit Code: ' + results.exitCode.toString());
      print('Output: ' + results.stdout.toString());
      print('Error: ' + results.stderr.toString());
      output = results.stdout.toString();
    });

    return output;
  }
}