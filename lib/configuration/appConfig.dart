class AppConfig {
// App Settings Section
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

  static String getMacOSSourceDir() {
    return "force-app/main/default";
  }

  static String getWindowsSourceDir() {
    return "force-app\\main\\default";
  } 
// End of App Settings Section

// Command Section
  static String getCreateProjectCommand() {
    return " project generate --name %%%ProjectName%%% --manifest";
  }

  static String getDeleteProjectCommand() {
    return " project delete source --source-dir %%%SourceDirectory%%%";
  }

  static String getDeployProjectCommand() {
    return " project deploy start --metadata-dir %%%MetaDataDir%%%";
  }

  static String getRunApexTestsCommand() {
    return " apex run test --synchronous --code-coverage";
  }

  static String getLoginToOrgCommand() {
    return " org login web --instance-url %%%InstanceUrl%%% --set-default --browser chrome";
  }

  static String getListAuthorizedOrgsCommand() {
    return " org list";
  }

  static String getConvertSourceToMetaDataCommand() {
    return " project convert source --root-dir %%%RootDir%%% --output-dir %%%MetaDataDir%%%";
  }
// End of Command Section

// Retrieve Command Section
  static String getAccountMetadata() {
    return " project retrieve start --metadata CustomObject:Account";
  }
// End of Retrieve Command Section
}