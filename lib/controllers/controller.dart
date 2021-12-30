import 'package:flutter_task/models/home_screen_model.dart';
import 'package:flutter_task/services/home_service.dart';
import 'package:get/state_manager.dart';

class Controller extends GetxController {
  RxList homeList = <HomeScreenModel>[].obs;
  RxBool isLoading = true.obs;

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
    fetch();
  }

  void fetch() async {
    try {
      isLoading(true);
      var home = await HomeServices.fetch();
      homeList.value = home;
    } finally {
      isLoading(false);
    }
  }
}
