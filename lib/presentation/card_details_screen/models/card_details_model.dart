import 'package:get/get.dart';
import 'card_details_item_model.dart';

/// This class defines the variables used in the [card_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CardDetailsModel {
  Rx<List<CardDetailsItemModel>> cardDetailsItemList =
      Rx(List.generate(5, (index) => CardDetailsItemModel()));
}
