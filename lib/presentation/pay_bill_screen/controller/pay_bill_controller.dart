import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/pay_bill_screen/models/pay_bill_model.dart';

/// A controller class for the PayBillScreen.
///
/// This class manages the state of the PayBillScreen, including the
/// current payBillModelObj
class PayBillController extends GetxController {
  Rx<PayBillModel> payBillModelObj = PayBillModel().obs;
}
