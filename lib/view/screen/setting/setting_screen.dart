import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/setting/setting.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SettingController settingController = Get.put(SettingController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          //dark and light mode
          Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.grey,
            child: Row(
              children: [
                const Text(
                  "Night Ligth",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                Switch(
                    value: settingController.isLigthTheme.value,
                    onChanged: (value) {
                      settingController.changeThemeFun();
                    })
              ],
            ),
          ),
          //language change

        ],
      ),
    );
  }
}
