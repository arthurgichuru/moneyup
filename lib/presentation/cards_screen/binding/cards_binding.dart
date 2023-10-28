import '../controller/cards_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CardsScreen.
///
/// This class ensures that the CardsController is created when the
/// CardsScreen is first loaded.
class CardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardsController());
  }
}
