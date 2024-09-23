import 'dart:convert';

import 'package:api/Untitled-1.dart';
import 'package:api/practice.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Practice(),
    );
  }
}

// class api extends StatefulWidget {
//   const api({super.key});

//   @override
//   State<api> createState() => _apiState();
// }

// class _apiState extends State<api> {
//   getuserpostapi() async {
//     // var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
//     var url = Uri.https("jsonplaceholder.typicode.com", "posts");
//     var response = await http.get(url);
//     var myresponse = jsonDecode(response.body);
//     print(myresponse);

//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     setState(() {
//       getuserpostapi();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               // getuserpostapi(0);
//               ListView.builder(itemBuilder: (context,index){
//                 return ListTile(
//                   leading: Text(getuserpostapi()),
//                 );
//               })
//             },
//             child: Text("Show")),
//       ),
//     );
//   }
// }
