import 'package:flutter/material.dart';
import 'package:laundry/constants/icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Row(
              children: [
                ListView.builder(itemBuilder: (context, index) {
                  return Card(
                  );
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
