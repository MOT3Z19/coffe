import 'package:coffee_station/UserTypes/Delivery/Screen/Orders/page/side_drawer.dart';
import 'package:coffee_station/UserTypes/User/screen/Chat/widget/chat_message.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'message.dart';

class DeliveryChatDetailsPage extends StatefulWidget {
  const DeliveryChatDetailsPage({Key? key}) : super(key: key);

  @override
  _DeliveryChatDetailsPageState createState() =>
      _DeliveryChatDetailsPageState();
}

class _DeliveryChatDetailsPageState extends State<DeliveryChatDetailsPage> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "مرحبا إيما", messageType: "receiver"),
    ChatMessage(messageContent: "كبف حالك؟", messageType: "receiver"),
    ChatMessage(
        messageContent: "هاي كديس، الحمدلله بخير، ماذا عنك!",
        messageType: "sender"),
    ChatMessage(
        messageContent: "آهاااا، بخير الحمدلل.", messageType: "receiver"),
    ChatMessage(messageContent: "ظمني، صاير معك شي ؟", messageType: "sender"),
  ];
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: _key,
        resizeToAvoidBottomInset: false,
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor:
                Colors.black, //This will change the drawer background to black.
          ),
          child: DeliverySideDrawer(),
        ),
        body: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width,
                    height: size.height / 5,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assest/images/rectangle.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: size.width / 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DeliveryMessage(),
                                ),
                              );
                            },
                            child: const Icon(
                              // added by vp
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Center(
                            child: const Text(
                              "احمد محمود ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _key.currentState!.openDrawer();
                            },
                            child: const Icon(
                              Icons.view_headline,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Stack(
                children: <Widget>[
                  ListView.builder(
                    itemCount: messages.length,
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                left: 14, right: 14, top: 1, bottom: 5),
                            child: Align(
                              alignment:
                                  (messages[index].messageType == "receiver"
                                      ? Alignment.topLeft
                                      : Alignment.topRight),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      (messages[index].messageType == "receiver"
                                          ? Colors.grey.shade200
                                          : Colors.grey.shade300),
                                ),
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    Text(
                                      messages[index].messageContent,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: (messages[index].messageType ==
                                                "receiver"
                                            ? Colors.black
                                            : Colors.blue),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal:
                                  (messages[index].messageType == "receiver"
                                      ? 80
                                      : 170),
                            ),
                            child: Align(
                                alignment:
                                    (messages[index].messageType == "receiver"
                                        ? Alignment.topLeft
                                        : Alignment.topRight),
                                child: Text("3:20 ")),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
              Container(
                width: size.width / 1.2,
                height: size.height / 17,
                decoration: BoxDecoration(
                  color: boxColor,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(top: size.height / 60),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    label: const Text("...  اكتب هنا"),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: boxColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showDialog1() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            actions: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assest/images/man.jpg"),
                  maxRadius: 30,
                ),
              ),
              const Center(
                  child: Text(
                "أحمد الأغا",
                style: TextStyle(
                  fontSize: 18,
                ),
              )),
              Container(
                margin: EdgeInsets.only(top: size.height / 58),
                child: Center(
                  child: RatingBar.builder(
                    initialRating: 0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 40,
                    // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      labelText: "اكتب هنا ...",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.grey)),
                ),
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تأكيد",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              Center(
                  child: Text(
                "تقديم شكوى",
                style: TextStyle(fontSize: 18, color: secondaryColor),
              )),
            ],
          );
        });
  }

  showDialog2() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: const Center(
                child: Text(
              "قدم الشكوى",
              style: TextStyle(fontSize: 25),
            )),
            actions: <Widget>[
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 40),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      labelText: "اكتب هنا ...",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.grey)),
                ),
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تأكيد",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
  }
}

///////////////////////////

// class DeliveryChatDetailsPage extends StatefulWidget {
//   const DeliveryChatDetailsPage({Key? key}) : super(key: key);
//
//   @override
//   _DeliveryChatDetailsPageState createState() =>
//       _DeliveryChatDetailsPageState();
// }
//
// class _DeliveryChatDetailsPageState extends State<DeliveryChatDetailsPage> {
//   List<ChatMessage> messages = [
//     ChatMessage(messageContent: "مرحبا إيما", messageType: "receiver"),
//     ChatMessage(messageContent: "كبف حالك؟", messageType: "receiver"),
//     ChatMessage(
//         messageContent: "هاي كديس، الحمدلله بخير، ماذا عنك!",
//         messageType: "sender"),
//     ChatMessage(
//         messageContent: "آهاااا، بخير الحمدلل.", messageType: "receiver"),
//     ChatMessage(
//         messageContent: " ماذا هناك ؟ هل هناك خطب  ", messageType: "sender"),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         // appBar: AppBar(
//         //   elevation: 0,
//         //   automaticallyImplyLeading: false,
//         //   backgroundColor: Colors.white,
//         //   flexibleSpace: SafeArea(
//         //     child: Container(
//         //       padding: const EdgeInsets.only(right: 16),
//         //       child: Row(
//         //         children: <Widget>[
//         //           IconButton(
//         //             onPressed: () {
//         //               Navigator.pop(context);
//         //             },
//         //             icon: const Icon(
//         //               Icons.arrow_back,
//         //               color: Colors.black,
//         //             ),
//         //           ),
//         //           const SizedBox(
//         //             width: 2,
//         //           ),
//         //           const CircleAvatar(
//         //             backgroundImage: AssetImage("assest/images/emma.webp"),
//         //             maxRadius: 20,
//         //           ),
//         //           const SizedBox(
//         //             width: 12,
//         //           ),
//         //           Expanded(
//         //             child: Column(
//         //               crossAxisAlignment: CrossAxisAlignment.start,
//         //               mainAxisAlignment: MainAxisAlignment.center,
//         //               children: <Widget>[
//         //                 const Text(
//         //                   "Emma Stone ",
//         //                   style: TextStyle(
//         //                       fontSize: 16, fontWeight: FontWeight.w600),
//         //                 ),
//         //                 const SizedBox(
//         //                   height: 6,
//         //                 ),
//         //                 Text(
//         //                   "Online",
//         //                   style: TextStyle(
//         //                       color: Colors.grey.shade600, fontSize: 13),
//         //                 ),
//         //               ],
//         //             ),
//         //           ),
//         //         ],
//         //       ),
//         //     ),
//         //   ),
//         // ),
//         body: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   width: size.width,
//                   height: size.height / 5,
//                   decoration: const BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(
//                         "assest/images/rectangle.png",
//                       ),
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                   child: const Center(
//                     child: Text(
//                       "احمد محمود",
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Stack(
//               children: <Widget>[
//                 ListView.builder(
//                   itemCount: messages.length,
//                   shrinkWrap: true,
//                   padding: const EdgeInsets.only(
//                     top: 10,
//                   ),
//                   physics: const NeverScrollableScrollPhysics(),
//                   itemBuilder: (context, index) {
//                     return Column(
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.only(
//                               left: 14, right: 14, top: 10, bottom: 10),
//                           child: Align(
//                             alignment:
//                                 (messages[index].messageType == "receiver"
//                                     ? Alignment.topLeft
//                                     : Alignment.topRight),
//                             child: Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color:
//                                     (messages[index].messageType == "receiver"
//                                         ? Colors.grey.shade200
//                                         : Colors.grey.shade300),
//                               ),
//                               padding: const EdgeInsets.all(16),
//                               child: Column(
//                                 children: [
//                                   Text(
//                                     messages[index].messageContent,
//                                     style: TextStyle(
//                                       fontSize: 15,
//                                       color: (messages[index].messageType ==
//                                               "receiver"
//                                           ? Colors.black
//                                           : Colors.blue),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           margin: EdgeInsets.symmetric(
//                             horizontal:
//                                 (messages[index].messageType == "receiver"
//                                     ? 80
//                                     : 170),
//                           ),
//                           child: Align(
//                               alignment:
//                                   (messages[index].messageType == "receiver"
//                                       ? Alignment.topLeft
//                                       : Alignment.topRight),
//                               child: Text("3:20 ")),
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//               ],
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(
//                   horizontal: size.width / 20, vertical: 10),
//               height: size.height / 8,
//               child: const TextField(
//                 // maxLines: 9,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: "اكتب هنا  ...",
//                     labelStyle: TextStyle(fontSize: 20, color: Colors.grey)),
//               ),
//             ),
//             // Container(
//             //   width: size.width / 1.2,
//             //   height: size.height / 17,
//             //   decoration: BoxDecoration(
//             //     color: boxColor,
//             //     border: Border.all(color: Colors.grey),
//             //     borderRadius: BorderRadius.circular(10),
//             //   ),
//             //   margin: EdgeInsets.only(top: size.height / 13),
//             //   child: TextField(
//             //     decoration: InputDecoration(
//             //       border: InputBorder.none,
//             //       label: const Text("...  اكتب هنا"),
//             //       enabledBorder: OutlineInputBorder(
//             //         borderSide: BorderSide(width: 1, color: boxColor),
//             //       ),
//             //     ),
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }