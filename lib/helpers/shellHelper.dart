import 'dart:io';
import 'package:process_run/shell.dart';
import 'package:deploy_tool/configuration/appConfig.dart';

class shellHelper {
  static Future<String> retrieveMetadata() async {
    String output = "";
    Directory workingDir =
        Directory("${AppConfig.getMacOSWorkingDir()}/TestProject");

    Directory.current = workingDir;

    var shell = Shell();

    await shell
        .run('sf project retrieve start --metadata CustomObject:Account');
    // Process.run('ls', ['-l'],
    //         runInShell: true, workingDirectory: workingDir.path.toString())
    //     .then((ProcessResult results) {
    //   print('Current Working Dir: ${workingDir.path}');
    //   print('Exit Code: ${results.exitCode}');
    //   print('Output: ${results.stdout}');
    //   print('Error: ${results.stderr}');
    //   output = results.stdout.toString();
    // });

    return "";
  }
}
