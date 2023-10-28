import 'package:get/get.dart';
import 'profile1_item_model.dart';

/// This class defines the variables used in the [mobile_prepaid_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MobilePrepaidOneModel {
  Rx<List<Profile1ItemModel>> profile1ItemList =
      Rx(List.generate(5, (index) => Profile1ItemModel()));
}
