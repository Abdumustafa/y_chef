// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:y_chef/chefs.dart';

class Food_Screen extends StatefulWidget {
  const Food_Screen({super.key});

  @override
  State<Food_Screen> createState() => _Food_ScreenState();
}

class _Food_ScreenState extends State<Food_Screen> {
  List products = [];

  final String imageUrl =
      "https://i.pinimg.com/474x/f2/e5/c1/f2e5c103f2d3934a3938a320429d1e2b--to-start-private-chef.jpg";
  final String imageUrl2 =
      "https://news.italianfood.net/wp-content/uploads/sites/2/2017/09/Healthy-gen1.jpg";
  final String imageUrl3 =
      "https://www.tasteofhome.com/wp-content/uploads/2018/01/exps33498_5SD153598B11_05_2b-1.jpg";
  final String imageUrl4 =
      "https://www.cliffsamusementpark.com/wp-content/uploads/2020/05/Cabana-Grill-600x338.jpg";

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    getDataFromFireStore();

  }

  getDataFromFireStore() {
    FirebaseFirestore firebaseFireStore = FirebaseFirestore.instance;
    
    firebaseFireStore.collection('project_data').get().then((value) {
      products.clear();
      for(var document in value.docs){
products.add(document);
    }
      setState(() {

      });
    });


  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.restaurant_menu),
          SizedBox(
            width: 10,
          ),
          Text("Food Market ")
        ],
      )),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
           
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(25),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(products[index]['image']),
                        radius: 50,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                          navegatortToChefs();
                        },
                        child:  Text(
                          products[index]['name'],
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                );
              },
              itemCount: products.length,
            ),
          ),
        ],
      ),
    );
  }

  void navegatortToChefs() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const chef_list(),
        ));
  }
}
