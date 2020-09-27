import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

callBrandsApi() {
  GeneralApiManager.brandsApi((List<Brands$Query$Brand> brands) {}, () {});
}

sliderApi() async {
  await GeneralApiManager.sliderApi(
      (List<Sliders$Query$Slider> list) {}, (ApiErrorModel error) {});
}
