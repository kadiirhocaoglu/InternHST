import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app_getx_project/app/core/utils/keys.dart';
import 'package:task_app_getx_project/app/data/providers/task/provider.dart';
import 'package:task_app_getx_project/app/data/services/storage/repository.dart';

import '../../data/models/task.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;
  HomeController({required this.taskRepository});

  final tasks = <Task>[].obs;
  final formKey = GlobalKey<FormState>();
  final editCtrl = TextEditingController();
  final chipIndex = 0.obs;

  @override
  void onInit() {
        super.onInit();
        tasks.assignAll(taskRepository.readTasks());
        ever(tasks, (_) => taskRepository.writeTasks(tasks));
  }
  @override
  void onClose() {
    super.onClose();
    
  }

  void ChangeChipIndex (){
    print(chipIndex.value);
  }

  bool addTask(Task task){
    if(tasks.contains(task)) {
      return false;
    }
    tasks.add(task);
    return true;
    editCtrl.clear();
  }

}
