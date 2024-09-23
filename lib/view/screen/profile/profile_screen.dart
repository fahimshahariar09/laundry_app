import 'package:flutter/material.dart';
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
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assetName"),
                    radius: 70,
                  ),
                  Positioned(
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
              CommonButton(
                buttonName: "Change Profile",
                buttonWidth: 250,
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
