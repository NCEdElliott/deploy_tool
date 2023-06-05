import 'dart:io';
import 'package:deploy_tool/configuration/appConfig.dart';

class shellHelper {
  static String retrieveMetadata() {
    String output = "";
    Directory workingDir =
        Directory("${AppConfig.getMacOSWorkingDir()}/TestProject");

    Process.run('ls', ['-l'],
            runInShell: true, workingDirectory: workingDir.path.toString())
        .then((ProcessResult results) {
      print('Current Working Dir: ${workingDir.path}');
      print('Exit Code: ${results.exitCode}');
      print('Output: ${results.stdout}');
      print('Error: ${results.stderr}');
      output = results.stdout.toString();
    });

    return output;
  }
}
