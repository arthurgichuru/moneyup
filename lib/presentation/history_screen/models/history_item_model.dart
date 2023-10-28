import 'package:get/get.dart';

/// This class is used in the [history_item_widget] screen.
class HistoryItemModel {
  Rx<String> octoberTxt = Rx("October");

  Rx<String> dateTxt = Rx("30/10/2020");

  Rx<String> unpaidTxt = Rx("Paid");

  Rx<String>? id = Rx("");
}
