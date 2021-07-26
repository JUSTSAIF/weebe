import 'package:get/get.dart';
import 'package:weebe/controllers/rootController.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<rootController>(rootController());
  }
}
