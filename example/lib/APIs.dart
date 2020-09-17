import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

callBrandsApi() {
  GeneralApiManager.brandsApi((List<Brand> brands) {}, () {});
}

sliderApi() async {
  await GeneralApiManager.sliderApi(
      (List<Slider> list) {}, (QueryResult error) {});
}
