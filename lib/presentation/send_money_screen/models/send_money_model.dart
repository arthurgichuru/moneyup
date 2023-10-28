import 'package:get/get.dart';
import 'profile_item_model.dart';

/// This class defines the variables used in the [send_money_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SendMoneyModel {
  Rx<List<ProfileItemModel>> profileItemList =
      Rx(List.generate(5, (index) => ProfileItemModel()));
}
