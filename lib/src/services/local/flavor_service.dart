import 'package:package_info_plus/package_info_plus.dart';

enum Env {
  prod,
  dev,
}

class FlavorService {
  static Env? env;

  static init(PackageInfo info) {
    final flavor = info.packageName.split(".").last;
    if (flavor == 'prod') {
      env = Env.prod;
    } else {
      env = Env.dev;
    }
  }

  static String get getBaseApi {
    return "https://twentyfourhaitch.pluton.ltd/api/";
  }
}
