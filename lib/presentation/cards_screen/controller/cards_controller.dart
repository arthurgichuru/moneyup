import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/cards_screen/models/cards_model.dart';

/// A controller class for the CardsScreen.
///
/// This class manages the state of the CardsScreen, including the
/// current cardsModelObj
class CardsController extends GetxController {
  Rx<CardsModel> cardsModelObj = CardsModel().obs;
}
