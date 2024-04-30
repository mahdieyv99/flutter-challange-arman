
import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoHelper {

  String version = "";
  String buildNumber = "";



  Future<String> getVersion() async {

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    return  packageInfo.version;

  }

  Future<String> getBuildNumber() async {

    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.buildNumber;

  }




}