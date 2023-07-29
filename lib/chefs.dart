// ignore_for_file: camel_case_types

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class chef_list extends StatefulWidget {
  const chef_list({super.key});

  @override
  State<chef_list> createState() => _chef_listState();
}

class _chef_listState extends State<chef_list> {
  final String imageUrl2 =
      "https://news.italianfood.net/wp-content/uploads/sites/2/2017/09/Healthy-gen1.jpg";


  @override
  void initState() {
    super.initState();
    getDataFromFireStore();
  }

  getDataFromFireStore() {
    FirebaseFirestore firebaseFireStore = FirebaseFirestore.instance;

    firebaseFireStore
        .collection('project_data')
        .doc("chefs")
        .collection('chefs')
        .get()
        .then((value) {
      // products.clear();
      for(var document in value.docs){
        print(document.data());
        // products.add(document);
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chefs"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl2),
                      radius: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                      "Ali mohamed"),

                  const SizedBox(
                    width: 150,
                  ),
                  const Icon(Icons.navigate_next),
                  // stars
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl2),
                      radius: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                      "Ali mohamed"),

                  const SizedBox(
                    width: 150,
                  ),
                  const Icon(Icons.navigate_next),
                  // stars
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl2),
                      radius: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                      "Ali mohamed"),

                  const SizedBox(
                    width: 150,
                  ),
                  const Icon(Icons.navigate_next),
                  // stars
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl2),
                      radius: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                      "Ali mohamed"),

                  const SizedBox(
                    width: 150,
                  ),
                  const Icon(Icons.navigate_next),
                  // stars
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl2),
                      radius: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                      "Ali mohamed"),

                  const SizedBox(
                    width: 150,
                  ),
                  const Icon(Icons.navigate_next),
                  // stars
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl2),
                      radius: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                      "Ali mohamed"),

                  const SizedBox(
                    width: 150,
                  ),
                  const Icon(Icons.navigate_next),
                  // stars
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl2),
                      radius: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                      "Ali mohamed"),

                  const SizedBox(
                    width: 150,
                  ),
                  const Icon(Icons.navigate_next),
                  // stars
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
