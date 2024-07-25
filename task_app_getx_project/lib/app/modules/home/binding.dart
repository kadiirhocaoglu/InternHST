import 'package:get/get.dart';
import 'package:task_app_getx_project/app/data/providers/task/provider.dart';
import 'package:task_app_getx_project/app/data/services/storage/repository.dart';
import 'package:task_app_getx_project/app/modules/home/controller.dart';
class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(
      taskRepository: TaskRepository(
        taskProvider: TaskProvider()
        ),
      ),
    );
  }

}