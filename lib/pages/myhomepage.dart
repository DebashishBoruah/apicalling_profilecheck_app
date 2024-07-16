import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/pages/profileview.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("API Calling",style: TextStyle(fontWeight: FontWeight.w500),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: ((BuildContext context ,index)
      {
        final user = users[index];
        final email = user['email'];
        final image = user['picture']['thumbnail'];
        final largeimg = user['picture']['large'];
        final fname = user['name']['first'];
         final lname = user['name']['last'];
         final phone = user['phone'];
        return GestureDetector(
          onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileView(image:largeimg,name:fname,email: email,phoneNumber: phone,)));
          },
          child: ListTile(
            leading:ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(image)),
            title:Text('$fname $lname'),
            subtitle: Text(email),
          ),
        );
      })),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed:(){
        fetchuser();
      }
      ,child:const Icon(Iconsax.search_favorite_1,color: Colors.white,),
      ),
    );
  }
  void fetchuser() async
 {
  const url = "https://randomuser.me/api/?results=20";
  final uri = Uri.parse(url);
  final response = await http.get(uri);
  final body = response.body;
  final json = jsonDecode(body);
   setState(() {
      users = json['results'];
   });
 }

}
 