import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/card_details_screen/models/card_details_model.dart';

/// A controller class for the CardDetailsScreen.
///
/// This class manages the state of the CardDetailsScreen, including the
/// current cardDetailsModelObj
class CardDetailsController extends GetxController {
  Rx<CardDetailsModel> cardDetailsModelObj = CardDetailsModel().obs;
}
