import 'package:flutter/material.dart';
import 'package:petplus_app/widgets/custom_action_bar.dart';

class AddTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Center(
            child: Text("AddTab"),
          ),
          CustomActionBar(
            title: "Add",
            hasBackArrrow: false,
          ),
        ],
      ),
    );
  }
}
