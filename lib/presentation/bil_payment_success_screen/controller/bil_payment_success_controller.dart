import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/bil_payment_success_screen/models/bil_payment_success_model.dart';

/// A controller class for the BilPaymentSuccessScreen.
///
/// This class manages the state of the BilPaymentSuccessScreen, including the
/// current bilPaymentSuccessModelObj
class BilPaymentSuccessController extends GetxController {
  Rx<BilPaymentSuccessModel> bilPaymentSuccessModelObj =
      BilPaymentSuccessModel().obs;
}
