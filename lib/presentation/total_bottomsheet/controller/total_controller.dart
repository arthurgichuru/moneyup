import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/total_bottomsheet/models/total_model.dart';

/// A controller class for the TotalBottomsheet.
///
/// This class manages the state of the TotalBottomsheet, including the
/// current totalModelObj
class TotalController extends GetxController {
  Rx<TotalModel> totalModelObj = TotalModel().obs;
}
