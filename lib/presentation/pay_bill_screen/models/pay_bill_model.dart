import 'package:get/get.dart';
import 'pay_bill_item_model.dart';

/// This class defines the variables used in the [pay_bill_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PayBillModel {
  Rx<List<PayBillItemModel>> payBillItemList =
      Rx(List.generate(4, (index) => PayBillItemModel()));
}
