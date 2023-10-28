import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/payment_success_screen/models/payment_success_model.dart';

/// A controller class for the PaymentSuccessScreen.
///
/// This class manages the state of the PaymentSuccessScreen, including the
/// current paymentSuccessModelObj
class PaymentSuccessController extends GetxController {
  Rx<PaymentSuccessModel> paymentSuccessModelObj = PaymentSuccessModel().obs;
}
