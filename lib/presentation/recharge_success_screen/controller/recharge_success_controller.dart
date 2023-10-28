import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/recharge_success_screen/models/recharge_success_model.dart';

/// A controller class for the RechargeSuccessScreen.
///
/// This class manages the state of the RechargeSuccessScreen, including the
/// current rechargeSuccessModelObj
class RechargeSuccessController extends GetxController {
  Rx<RechargeSuccessModel> rechargeSuccessModelObj = RechargeSuccessModel().obs;
}
