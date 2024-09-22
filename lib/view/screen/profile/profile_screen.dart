import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6DA0C2),
      appBar: AppBar(
        backgroundColor: const Color(0xff6DA0C2),
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text("data")
          ],
        ),
      ),
    );
  }
}
