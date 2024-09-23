import 'package:flutter/material.dart';
import 'package:laundry/constants/icon.dart';
import 'package:laundry/view/common_widget/common_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6DA0C2),
      appBar: AppBar(
        backgroundColor: const Color(0xff6DA0C2),
        title: const Text("Profile"),
      ),
      body: SafeArea(
        child: Center(
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
                  Positioned(
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
              SizedBox(height: 20),
              CommonButton(
                buttonName: "Change Profile",
                buttonWidth: 250,
                onTap: () {},
              ),
              SizedBox(height: 15),
              Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                color: Colors.grey,
                child: Row(
                  children: [
                    Text("Name"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
