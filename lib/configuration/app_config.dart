class AppConfig {
  static String getMacOSShell() {
    return "/bin/bash";
  }

  static String getWindowsShell() {
    return "C:\\Windows\\System32\\cmd.exe";
  }

  static String getLinuxShell() {
    return "/bin/bash";
  }

  static String getMacOSSfdxCommand() {
    return "/usr/local/bin/sf";
  }

  static String getWindowsSfdxCommand() {
    return "C:\\Program Files\\nodejs\\sf";
  }

  static String getMacOSWorkingDir() {
    return "/Users/eddie/Dev/Pearson/SFDX2";
  }

  static String getWindowsWorkingDir() {
    return "C:\\Users\\edell\\Dev\\Pearson\\SFDX2";
  }
}