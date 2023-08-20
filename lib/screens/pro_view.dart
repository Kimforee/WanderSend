import 'package:WanderSend/screens/searchbar.dart';
import 'package:WanderSend/utils/app_layout.dart';
import 'package:WanderSend/utils/app_styles.dart';
import 'package:WanderSend/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProView extends StatelessWidget {
  const ProView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 400,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            // for showing the blue part of the ticket
            Container(
              width: 350,
              height: 400,
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),

              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFF4F3FD)
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child :Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 100,child: Text('Rating :',style: Styles.headLineStyle22.copyWith(color: Colors.black54)),
                          ),
                          Text("4.5/5",style: Styles.headLineStyle3.copyWith(color: Colors.black54)),
                          SizedBox(
                            width: 100,child: Text('',textAlign: TextAlign.end,style:
                          Styles.headLineStyle4.copyWith(color: Colors.white)),
                          ),
                        ],
                      )

                  ),
                  const Gap(15),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFF4F3FD)
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child :Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                            width: 100,child: Text('Email Id:',style: Styles.headLineStyle22.copyWith(color: Colors.black54)),
                          ),
                          Text("aakarshan@gmail.com",style: Styles.textStyle.copyWith(color: Colors.black54)),
                        ],
                      )
                  ),
                  const Gap(15),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFF4F3FD)
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child :Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                            width: 100,child: Text('Address:',style: Styles.headLineStyle22.copyWith(color: Colors.black54)),
                          ),
                          Text("Waknaghat, Solan,\n Himachal Pradesh",style: Styles.textStyle.copyWith(color: Colors.black54)),
                        ],
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}