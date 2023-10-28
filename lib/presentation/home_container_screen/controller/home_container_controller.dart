import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/home_container_screen/models/home_container_model.dart';

/// A controller class for the HomeContainerScreen.
///
/// This class manages the state of the HomeContainerScreen, including the
/// current homeContainerModelObj
class HomeContainerController extends GetxController {
  var id = Get.arguments[NavigationArgs.id];

  Rx<HomeContainerModel> homeContainerModelObj = HomeContainerModel().obs;
}
