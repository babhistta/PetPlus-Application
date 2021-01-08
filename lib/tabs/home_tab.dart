import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petplus_app/screens/pet_detail.dart';
import 'package:petplus_app/widgets/custom_action_bar.dart';
import 'package:petplus_app/widgets/pets_card.dart';

class HomeTab extends StatelessWidget {
  final CollectionReference _petsRef =
      FirebaseFirestore.instance.collection("Pets");


  @override
  Widget build(BuildContext context) {

    return Container(
      child: Stack(
        children: [
          FutureBuilder<QuerySnapshot>(
            future: _petsRef.get(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Scaffold(
                  body: Center(
                    child: Text("Error: ${snapshot.error}"),
                  ),
                );
              }
              // Collection Data ready to display
              if (snapshot.connectionState == ConnectionState.done) {
                // Display the data inside a list view
                return ListView(
                  padding: EdgeInsets.only(
                    top: 108.0,
                    bottom: 12.0,
                  ),
                  children: snapshot.data.docs.map((document) {
                    return PetCard(
                      title: document.data()['name'],
                      categories: document.data()['categories'][0],
                      imageUrl: document.data()['images'][0],
                      price: "\$${document.data()['price']}",
                      petId: document.id,
                    );
                  }).toList(),
                );
              }
              // Loading State
              return Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
          CustomActionBar(
            title: "Home",
            hasBackArrrow: false,
          ),
        ],
      ),
    );
  }
}
