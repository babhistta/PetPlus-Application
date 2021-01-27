import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petplus_app/constants.dart';
import 'package:petplus_app/widgets/custom_action_bar.dart';
import 'package:petplus_app/widgets/custom_btn.dart';
import 'package:petplus_app/widgets/custom_input.dart';

class AddTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomActionBar(
                title: "Upload Hewan",
                hasBackArrrow: false,
              ),
              CustomInput(
                hintText: "Kategori Hewan",
                textInputAction: TextInputAction.next,
              ),
              CustomInput(
                hintText: "Jenis Hewan",
                textInputAction: TextInputAction.next,
              ),
              CustomInput(
                hintText: "Hewan",
                textInputAction: TextInputAction.next,
              ),
              CustomInput(
                hintText: "Harga",
              ),
              CustomBtn(
                text: "Login",
              )
            ],
          ),
        ],
      ),
    );
  }
}
