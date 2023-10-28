import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/request_sent_screen/models/request_sent_model.dart';

/// A controller class for the RequestSentScreen.
///
/// This class manages the state of the RequestSentScreen, including the
/// current requestSentModelObj
class RequestSentController extends GetxController {
  Rx<RequestSentModel> requestSentModelObj = RequestSentModel().obs;
}
