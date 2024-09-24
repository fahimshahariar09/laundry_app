import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/constants/icon.dart';
import 'package:laundry/view/common_widget/common_button.dart';
import 'package:laundry/view/screen/profile/profile_edit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6DA0C2),
      appBar: AppBar(
        backgroundColor: const Color(0xff6DA0C2),
        title: const Text("Profile"),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(ProfileEdit());
              },
              icon: Icon(Icons.edit))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        AppIcon.profile,
                      ),
                      radius: 70,
                    ),
                    const Positioned(
                        right: 10,
                        bottom: 4,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15,
                          child: Icon(
                            Icons.edit,
                            size: 10,
                            color: Colors.black,
                          ),
                        ))
                  ],
                ),
                const SizedBox(height: 20),
                CommonButton(
                  buttonName: "Change Profile",
                  buttonWidth: 250,
                  onTap: () {},
                ),
                const SizedBox(height: 15),
                Container(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.white,
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "First Name",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.white,
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Last Name",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.white,
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Phone or Email",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 50,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.white,
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                CommonButton(buttonName: "Save", buttonWidth: 200, onTap: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
