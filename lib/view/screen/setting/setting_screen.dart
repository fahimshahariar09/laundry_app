import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            color: Colors.grey,
            child: Row(
              children: [
                Text("Night Ligth",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
