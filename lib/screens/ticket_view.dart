import 'package:WanderSend/screens/searchbar.dart';
import 'package:WanderSend/utils/app_layout.dart';
import 'package:WanderSend/utils/app_styles.dart';
import 'package:WanderSend/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter/widgets.dart';
import 'package:WanderSend/screens/info_file.dart';

class TicketView extends StatefulWidget {
  TicketView({Key? key}) : super(key: key);

  @override
  State<TicketView> createState() => _TicketView();
}
  //this text controller gets the value enter by the user
  final textController = TextEditingController();
  final textController1 = TextEditingController();
  //this variable stores the value enter by the user
  String ship = "";
  String curr = "";

class _TicketView extends State<TicketView> {
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 325,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            // for showing the blue part of the ticket
            Container(
              width: 350,
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
                topRight: Radius.circular(21)),

              ),
              padding: const EdgeInsets.all(14),
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFF4F3FD)
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                      child:Column(
                        children: [
                          TextButton(
                            onPressed: (){
                            },
                            child: TextField(
                              controller: textController,
                              decoration:InputDecoration(
                                hintText: "Enter your Current location",
                              ),
                            ),
                          ),
                        ],
                      )
                    ),
                  const Gap(10),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFF4F3FD)
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                      child:Column(
                        children: [
                          // const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          //           color: Color(0xFFBFC205)),
                          TextButton(
                            onPressed: (){
                            },

                            child: TextField(
                              controller: textController1,
                              decoration:const InputDecoration(
                                hintText: "Enter your Shipment location",
                              ),
                            ),
                          ),
                        ],
                      )
                    ),
                  const Gap(10),
                  Container(
                      width: 90,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xFF93C3DA)
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                      child:Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          // const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          //           color: Color(0xFFBFC205)),
                          InkWell(
                            onTap: (){
                              setState(() {
                                curr = textController.text;
                                ship = textController1.text;
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const info_file()),
                              );
                            },
                            // onPressed: ()=>info_file(),
                    child: Container(
                      color: const Color(0xFF93C3DA),
                      child: const Center(
                        child: Text(
                          "Go",
                          style: TextStyle(color: Color(0xFF000000)),
                        ),
                        ),
                          )
                          )
                        ],
                      )
                  ),
                 // for showing the input location and shipment location
                  const Gap(15),
                  Container(
                      width: 500,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xFFF4F3FD),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                      child:Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           Expanded(
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10,vertical:6),
                               child: Text(
                                 'SHIPMENT : $ship',
                                 textAlign: TextAlign.left,
                               ),
                             ),
                           ),
                         ],
                       )
                     ),
                  const Gap(5),
                  Container(
                      width: 500,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFFF4F3FD),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical:6),
                      child:Column(
                        mainAxisAlignment:MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                                    child:Text('CURRENT : $curr',
                                        textAlign: TextAlign.left)
                          )
                        ],
                      )
                   )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}