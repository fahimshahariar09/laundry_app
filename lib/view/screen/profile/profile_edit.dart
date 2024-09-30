import 'package:flutter/material.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile edit"),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          SizedBox(height: 20,),
          TextField(),
          TextField(),
          TextField(),
          TextField(),
        ],
      ),
    );
  }
}
