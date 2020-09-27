import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

callBrandsApi() {
  GeneralApiManager.brandsApi((BrandModel brands) {}, () {});
}

sliderApi() async {
  await GeneralApiManager.sliderApi(
      (SlidersModel sliderModel) {}, (ApiErrorModel error) {});
}
