// // import 'dart:convert';

// // import 'package:flutter/material.dart';

import 'dart:collection';
import 'dart:convert';

import 'package:api/models/post_api.dart';
import 'package:api/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//  https://jsonplaceholder.typicode.com/posts

// // class Practice extends StatefulWidget {
// //   const Practice({super.key});

// //   @override
// //   State<Practice> createState() => _PracticeState();
// // }

// // class _PracticeState extends State<Practice> {
// //   // getuserpostapi() async {
// //   //   var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
// //   //   var response = await http.get(url);
// //   //   var responsebody = jsonDecode(response.body);
// //   //   return responsebody;
// //   // }

// //   getuserAPI() async {
// //     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
// //     var response = await http.get(url);
// //     var responsebody = jsonDecode(response.body);
// //     return responsebody;
// //   }

// //   @override
// //   // void initState() {
// //   //   // TODO: implement initState
// //   //   getuserpostapi();
// //   // }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.amber[50],
// //       resizeToAvoidBottomInset: false,
// //       body: FutureBuilder(
// //         future: getuserAPI(),
// //         builder: (context, AsyncSnapshot snapshot) {
// //           if (snapshot.hasData) {
// //             return ListView.builder(
// //               itemCount: snapshot.data.length,
// //               itemBuilder: (context, index) {
// //                 return ListTile(
// //                   title: Text(snapshot.data[index]['title']),
// //                   subtitle: Text(snapshot.data[index]['userId'].toString()),
// //                 );
// //               },
// //             );
// //           }
// //           return Center(child: const CircularProgressIndicator());
// //         },
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// List _respose = [];

// class _PracticeState extends State<Practice> {
//   getuserAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
//     var response = await http.get(url);
//     var responsebody = jsonDecode(response.body);
//     setState(() {
//       _respose = responsebody;
//     });
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     getuserAPI();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//           itemCount: _respose.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text(_respose[index]['title']),
//             );
//           }),
//     );
//   }
// // }
// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// class _PracticeState extends State<Practice> {
//   getuserpostAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
//     var response = await http.get(url);
//     var myresponse = jsonDecode(response.body);
//     return myresponse;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: getuserpostAPI(),
//           builder: (context, AsyncSnapshot snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                   itemCount: snapshot.data.length,
//                   itemBuilder: (context, index) {
//                     var data = snapshot.data[index];
//                     return ListTile(
//                       title: Text(data['title']),
//                       subtitle: Container(
//                         width: 200,
//                         color: Colors.lightBlue,
//                         child: Text(
//                           data['id'].toString(),
//                         ),
//                       ),
//                       trailing: CircleAvatar(child: Text(data["userId"].toString())),
//                     );
//                   });
//             }
//             return Center(child: const CircularProgressIndicator());
//           }),
//     );
//   }
// }

// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// List<PostModel> responseData = [];

// class _PracticeState extends State<Practice> {
//   Future<List<PostModel>> getpostAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts/");
//     var response = await http.get(url);
//     var responsebody = jsonDecode(response.body);

//     for (var eachMap in responsebody) {
//       responseData.add(PostModel.fromJson(eachMap));
//     }
//     return responseData;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: getpostAPI(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListTile(
//                 title: Text(snapshot.data?[0].userId.toString() ?? "No ID"),
//               );
//             } else {
//               return Center(child: const CircularProgressIndicator());
//             }
//           }),
//     );
//   }
// }

//Single Map from With Model Approach

// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => PracticeState();
// }

// class PracticeState extends State<Practice> {
//   Future<PostModel> getpostAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
//     var response = await http.get(url);
//     var responsebody = jsonDecode(response.body);

//     return PostModel.fromJson(responsebody);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: getpostAPI(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListTile(
//                 title: Text(snapshot.data?.id.toString() ?? "No ID"),
//                 subtitle: Text(snapshot.data?.title ?? "No Title"),
//               );
//             }
//             return const CircularProgressIndicator();
//           }),
//     );
//   }
// // }

// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// List<PostModel> responseData = [];

// class _PracticeState extends State<Practice> {
//   Future<List<PostModel>> getuserAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
//     var response = await http.get(url);
//     var responsebody = jsonDecode(response.body);

//     for (var eachMap in responsebody) {
//       responseData.add(PostModel.fromJson(eachMap));
//     }

//     return responseData;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: getuserAPI(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                   itemCount: responseData.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       title: Text(snapshot.data?[index].title ?? "No Title"),
//                       subtitle: Text(responseData?[index].id.toString() ?? "No ID"),
//                     );
//                   });
//             } else {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//           }),
//     );
//   }
// }

// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// List _response = [];

// class _PracticeState extends State<Practice> {
//   getuserAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
//     var response = await http.get(url);
//     var responsebody = jsonDecode(response.body);
//     return responsebody;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: FutureBuilder(
//             future: getuserAPI(),
//             builder: (context, AsyncSnapshot snapshot) {
//               if (snapshot.hasData) {
//                 return ListView.builder(
//                     itemCount: snapshot.data.length,
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         title: Text(snapshot.data[index]['id'].toString()),
//                       );
//                     });
//               }
//               return Center(child: CircularProgressIndicator());
//             }));
//   }
// }

// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// List<PostModelApi> responseData = [];

// class _PracticeState extends State<Practice> {
//   Future<List<PostModelApi>> getuserAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
//     var response = await http.get(url);
//     var responsebody = jsonDecode(response.body);

//     for (var eachMap in responsebody) {
//       responseData.add(PostModelApi.fromJson(eachMap));
//     }

//     return responseData;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: getuserAPI(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                   itemCount: responseData.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       title: Text(responseData[index].title ?? "No title"),
//                     );
//                   });
//             }
//             return Center(child: CircularProgressIndicator());
//           }),
//     );
//   }
// }

// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// List<PostModelApi> modelList = [];

// class _PracticeState extends State<Practice> {
//   Future<List<PostModelApi>> getAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts/");
//     var response = await http.get(url);
//     var responsebody = jsonDecode(response.body);

//     for (var eachelement in responsebody) {
//       modelList.add(PostModelApi.fromJson(eachelement));
//     }

//     return modelList;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: getAPI(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                   itemCount: modelList.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       title: Text(snapshot.data?[index].body ?? "dc"),
//                     );
//                   });
//             }
//             return CircularProgressIndicator();
//           }),
//     );
//   }
// }

// class Practice extends StatefulWidget {
//   const Practice({super.key});

//   @override
//   State<Practice> createState() => _PracticeState();
// }

// List<PostModelApi> resposeData = [];

// class _PracticeState extends State<Practice> {
//   Future<List<PostModelApi>> getAPI() async {
//     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
//     var response = await http.get(url);
//     var responsebody = jsonDecode(response.body);

//     for (var eachMap in responsebody) {
//       resposeData.add(PostModelApi.fromJson(eachMap));
//     }

//     return resposeData;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//           future: getAPI(),
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                   itemCount: resposeData.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       title: Text(resposeData[index].body ?? "No Title"),
//                       subtitle: Text(resposeData[index].id.toString() ?? ""),
//                     );
//                   });
//             }

//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }),
//     );
//   }
// }

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

TextEditingController addtitlecontroller = TextEditingController();
TextEditingController updatetitlecontroller = TextEditingController();
Future<List<postModel>> getAPI() async {
  List<postModel> responseData = [];

  var url = Uri.parse("https://crudcrud.com/api/a1d6fdffbebe4cd8884955df93d1bfbd/names");
  var response = await http.get(url);

  var responsebody = jsonDecode(response.body);

  for (var eachMap in responsebody) {
    responseData.add(postModel.fromJson(eachMap));
  }

  return responseData;
}

postAPI() async {
  var url = Uri.parse("https://crudcrud.com/api/a1d6fdffbebe4cd8884955df93d1bfbd/names");

  var response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode(
      {
        "title": addtitlecontroller.text,
        "counts": "Time: ${DateTime.now().toString().substring(10, 19)}",
      },
    ),
  );
  addtitlecontroller.clear();
}

deleteAPI(String id) async {
  var url = Uri.parse("https://crudcrud.com/api/a1d6fdffbebe4cd8884955df93d1bfbd/names/$id");
  await http.delete(url);
}

updatedAPI(String id) async {
  var url = Uri.parse("https://crudcrud.com/api/a1d6fdffbebe4cd8884955df93d1bfbd/names/$id");
  await http.put(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode(
      {
        "title": updatetitlecontroller.text,
        "counts": "Time: ${DateTime.now().toString().substring(10, 19)}",
      },
    ),
  );
}

class _PracticeState extends State<Practice> {
  bool isadd = false;
  bool isupdate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
            future: getAPI(),
            builder: (context, AsyncSnapshot<List<postModel>> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data?[index].title ?? "no title"),
                        subtitle: Row(
                          children: [
                            Badge(
                              label: Text(snapshot.data![index].counts.toString()),
                            ),
                          ],
                        ),
                        trailing: CircleAvatar(
                          child: IconButton(
                              onPressed: () async {
                                await deleteAPI(snapshot.data?[index].sId ?? "0");
                                setState(() {});
                              },
                              icon: const Icon(Icons.delete)),
                        ),
                        leading: CircleAvatar(
                          child: IconButton(
                              onPressed: () {
                                // await updatedAPI(snapshot.data?[index].sId ?? "0");
                                // setState(() {});
                                updatetitlecontroller.text = snapshot.data?[index].title ?? "No Title";
                                showDialog(
                                  context: context,
                                  builder: (BuildContext) {
                                    return AlertDialog(
                                      title: const Text("Edit Details to API"),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          TextFormField(
                                            controller: updatetitlecontroller,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                      actions: [
                                        ElevatedButton(
                                          onPressed: () async {
                                            await updatedAPI(snapshot.data?[index].sId ?? "0");
                                            setState(() {});
                                            Navigator.pop(context);
                                          },
                                          child: const Text("Update Item In API"),
                                        )
                                      ],
                                    );
                                  },
                                );
                              },
                              icon: const Icon(Icons.edit)),
                        ),
                      );
                    });
              }
              return const Center(child: CircularProgressIndicator());
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext) {
              return AlertDialog(
                title: const Text("Add Item"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: addtitlecontroller,
                      decoration: const InputDecoration(
                        label: Text("Enter Title"),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          isadd = true;
                        });
                        await postAPI();
                        setState(() {
                          isadd = false;
                        });
                        Navigator.pop(context);
                      },
                      child: isadd ? const CircularProgressIndicator() : const Text("Add Item In API"))
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
