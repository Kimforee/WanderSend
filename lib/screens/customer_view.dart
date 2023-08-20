import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomerView extends StatelessWidget {
  const CustomerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
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
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 1),
                      child:Row(
                        children: [
                          // const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          //           color: Color(0xFFBFC205)),
                          TextButton(
                            onPressed: (){
                            },
                            child: Text(
                                "Get your Customers here"
                            ),
                          ),
                        ],
                      )
                    ),
                  // searchbar(),
                  // Row(
                  //   children: [
                  //     Text("NDL",style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                  //     const Spacer(),
                  //     ThickContainer(),
                  //     Expanded(child: Stack(
                  //       children: [
                  //       SizedBox(
                  //         height: 100,
                  //         child: LayoutBuilder(
                  //
                  //           builder: (BuildContext context , BoxConstraints constraints) {
                  //             print(
                  //                 "The width is ${constraints.constrainWidth()}");
                  //             return Flex(
                  //               direction: Axis.horizontal,
                  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //               mainAxisSize: MainAxisSize.max ,
                  //               children: List.generate((constraints.constrainWidth()/6).floor(),
                  //                       (index) =>
                  //                   SizedBox(
                  //                        width:3 ,
                  //                     height: 1,
                  //                     child: DecoratedBox(decoration: BoxDecoration(
                  //                       color: Colors.white
                  //                     )),
                  //                   )),
                  //             );
                  //           },
                  //         ),
                  //       ),
                  //         Center(child: Transform.rotate(angle: 1.58,child: Icon(Icons.local_airport_rounded,color: Colors.white,) ,)),
                  //       ],
                  //     )),
                  //
                  //     ThickContainer(),
                  //     const Spacer(),
                  //     Text("PNE",style: Styles.headLineStyle3.copyWith(color: Colors.white),)
                  //   ],
                  // ),
                  const Gap(1),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     SizedBox(
                //       width: 100,child: Text('New Delhi',style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                //     ),
                //     Text("12H 40M",style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                //   SizedBox(
                //     width: 100,child: Text('Pune',textAlign: TextAlign.end,style:
                //     Styles.headLineStyle4.copyWith(color: Colors.white)),
                //   ),
                //   ],
                // )
                ],
              ),
            ),

            //for showing the red part of the ticket
            // Container(
            //   width: 350,
            //   height: 10,
            //   color: const Color(0xFF749F1),
            //   //6773F3FF
            //   child: Row(
            //      children: const[
            //       SizedBox(
            //
            //         height: 20,
            //         width: 10,
            //         child: DecoratedBox(
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //             borderRadius: BorderRadius.only(
            //               topRight: Radius.circular(10),
            //               bottomRight: Radius.circular(10)
            //             )
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}