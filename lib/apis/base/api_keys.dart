const graphql = "graphql";
const authorization = "Authorization";
const acceptLanguage = "Accept-Language";

const validation = "validation";
const authentication = "authentication";
const guards = "guards";
const reason = "reason";
const category = "category";

const OPERATION_URL =
    "https://sbpaymentservices.payfort.com/FortAPI/paymentApi";

class Languages {
  final String value;
  const Languages(this.value);

  static const arabic = Languages("ar");
  static const english = Languages("en");
}
