// You have generated a new plugin project without
// specifying the `--platforms` flag. A plugin project supports no platforms is generated.
// To add platforms, run `flutter create -t plugin --platforms <platforms> .` under the same
// directory. You can also find a detailed instruction on how to add platforms in the `pubspec.yaml` at https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'package:mmd_ecommerce_fl_lib/apis/base_api_manager.dart';


class MmdECommerceFlLib {

  static void submitBaseUrl(String baseUrl) {
    BaseApiManager.setUrl(baseUrl);
  }
}
