import '../controller/activity_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ActivityScreen.
///
/// This class ensures that the ActivityController is created when the
/// ActivityScreen is first loaded.
class ActivityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActivityController());
  }
}
