import 'dart:io';
import 'package:process_run/shell.dart';
import 'package:deploy_tool/configuration/appConfig.dart';

class shellHelper {
  static Future<String> retrieveMetadata() async {
    String output = "";
    Directory workingDir =
        Directory("${AppConfig.getMacOSWorkingDir()}/TestProject");

    Directory.current = Platform.pathSeparator + workingDir.path;
    Directory.current = workingDir;

    // await shell
    //     .run('sf project retrieve start --metadata CustomObject:Account');
    Process.run('ls', ['-l'],
            environment: ShellEnvironment(),
            includeParentEnvironment: true,
            runInShell: true)
        // workingDirectory: '${AppConfig.getMacOSWorkingDir()}/TestProject')
        .then((ProcessResult results) {
      print(
          'Current Working Dir: ${AppConfig.getMacOSWorkingDir()}/TestProject');
      print('Exit Code: ${results.exitCode}');
      print('Output: ${results.stdout}');
      print('Error: ${results.stderr}');
      output = results.stdout.toString();
    });

    return "";
  }
}
