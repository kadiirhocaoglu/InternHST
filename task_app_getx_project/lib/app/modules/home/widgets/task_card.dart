import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_app_getx_project/app/core/utils/extensions.dart';
import 'package:task_app_getx_project/app/modules/home/controller.dart';

import '../../../data/models/task.dart';

class TaskCard extends StatelessWidget {
  TaskCard({super.key, required this.task});
  final homeCtrl = Get.find<HomeController>();
  
  final Task task;
  @override
  Widget build(BuildContext context) {
    var squareWidth = Get.width - 12.0.wp;
    return Container(
      height: squareWidth / 2,
      width: squareWidth / 2,
      margin: EdgeInsets.all(3.0.wp),
      child: Column(
        children: [
          Text(task.title),
          Text(task.color),
          Text(task.icon.toString()),
        ],),
    );
    
  }
}