import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app_getx_project/app/core/utils/extensions.dart';
import 'package:task_app_getx_project/app/modules/home/controller.dart';
import 'package:task_app_getx_project/app/modules/home/widgets/task_card.dart';

import 'widgets/add_card.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Text(
              "Tasks", 
              style: 
              TextStyle(
                fontSize: 26.0.sp
              )
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [AddCard()],
            ),
            Obx(() => GridView.count( 
              crossAxisCount: 2, shrinkWrap: true,
              physics: const ClampingScrollPhysics (), children: [
              ...controller.tasks.map ((element) => TaskCard (task: element)).toList()
          ],
        ),
      )
      ]))  
    );
  }
}