import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confPasswordController = TextEditingController();
  RxInt selectedTap = 0.obs;
  RxInt selectedOrderTap = 1.obs;
  RxBool languageBn = true.obs;
  RxBool themeLight = true.obs;
  RxBool isLoading = true.obs;
  RxMap<dynamic, dynamic> userInfo = {}.obs;
  ImageSource imageSource = ImageSource.camera;
  late Rx<File?> profileIMG = Rx<File?>(null);
  final picker = ImagePicker();
}
