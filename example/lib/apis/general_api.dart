import 'package:mmd_ecommerce_fl_lib/mmd_ecommerce.dart';

callBrandsApi() {
  GeneralApiManager.brandsApi((BrandList brands) {}, () {});
}

sliderApi() async {
  await GeneralApiManager.sliderApi(
      (SliderList sliderModel) {}, (ApiErrorModel error) {});
}
