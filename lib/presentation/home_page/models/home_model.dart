import 'package:get/get.dart';
import 'options_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<OptionsItemModel>> optionsItemList =
      Rx(List.generate(6, (index) => OptionsItemModel()));
}
