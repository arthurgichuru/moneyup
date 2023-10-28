import 'package:moneyup/core/app_export.dart';
import 'package:moneyup/presentation/activity_screen/models/activity_model.dart';

/// A controller class for the ActivityScreen.
///
/// This class manages the state of the ActivityScreen, including the
/// current activityModelObj
class ActivityController extends GetxController {
  Rx<ActivityModel> activityModelObj = ActivityModel().obs;
}
