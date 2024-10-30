import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/setting/setting.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    SettingController settingController = Get.put(SettingController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Obx(
              () => Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                color: Colors.grey,
                child: ListTile(
                  title: Text("DarkMode".tr),
                  trailing: Switch(
                      value: settingController.isLightTheme.value,
                      activeColor: Colors.grey,
                      activeTrackColor: Colors.white,
                      inactiveThumbColor: Colors.black,
                      onChanged: (value) {
                        settingController.changeThemeFun();
                      }),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
