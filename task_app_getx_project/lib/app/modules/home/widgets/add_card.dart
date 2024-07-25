import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_app_getx_project/app/core/utils/extensions.dart';
import 'package:task_app_getx_project/app/modules/home/controller.dart';

import '../../../data/models/task.dart';

class AddCard extends StatelessWidget {
  final homeCrtl = Get.find<HomeController>();

  AddCard({super.key});

  List<Icon> icons = [
    Icon(Icons.abc),
    Icon(Icons.face),
    Icon(Icons.safety_check),
    Icon(Icons.sd_card_alert),
    Icon(Icons.wallet)
  ];

  @override
  Widget build(BuildContext context) {
    var squareWidth = Get.width - 12.0.wp;
    return Container(
      height: squareWidth / 2,
      width: squareWidth / 2,
      margin: EdgeInsets.all(3.0.wp),
      child: InkWell(
        onTap: () async {
          Get.defaultDialog(
            title: "Merhaba",
            content: Column(
              children: [
                Form(
                  key: homeCrtl.formKey,
                  child: TextFormField(
                    controller: homeCrtl.editCtrl,
                    validator: (value){
                      if (value == null || value == ''){
                        return "Doldur";
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Wrap(
                  spacing: 2.0.wp,
                  children: icons.asMap().entries.map((entry) {
                    final index = entry.key;
                    final icon = entry.value;
                    return Obx(() {
                      return ChoiceChip(
                        selectedColor: Colors.grey[400],
                        pressElevation: 0,
                        label: icon,
                        selected: homeCrtl.chipIndex.value == index,
                        onSelected: (bool selected) {
                          homeCrtl.chipIndex.value = selected ? index : 0;
                        },
                      );
                    });
                  }).toList(),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (homeCrtl.formKey.currentState!.validate()) {
                      String title = "deneme";
                      int icon = icons[homeCrtl.chipIndex.value].icon!.codePoint;
                      String color = Colors.amber.toString();
                      Task task = Task(title: title, icon: icon, color: color);
                      Get.back();
                      homeCrtl.addTask(task) ? 
                        EasyLoading.showSuccess('Create Success') : 
                        EasyLoading.showError("Duplicate Task");
                    }
                  },
                  child: Text("Gönder"),
                ),
              ],
            ),
            
          );
        },
        child: Center(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
