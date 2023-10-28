import 'package:get/get.dart';

/// This class is used in the [card_details_item_widget] screen.
class CardDetailsItemModel {
  Rx<String> shoppingTxt = Rx("Shopping");

  Rx<String> timeTxt = Rx("3:41 pm");

  Rx<String> priceTxt = Rx("-50.35");

  Rx<String>? id = Rx("");
}
