import 'package:WanderSend/screens/customer_view.dart';
import 'package:WanderSend/screens/pro_view.dart';
import 'package:WanderSend/screens/ticket_view.dart';
import 'package:WanderSend/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: Color(0xFF8FAEFA),

            child: Column(
              children: [
                const Gap(40),
                // const Gap(10),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            color: Color(0xFF8FAEFA),

            child: Column(
              children: [
                const Gap(40),
                Container(

                  width: 190,
                  height: 190,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFBDCFFF),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Gap(5),
                            const SizedBox(height:5),
                            Text(
                              "Aakarshan Singh",style: Styles.headLineStyle1,
                            ),
                          ]
                      ),
                    ),

                  ],
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius:  BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(
                                  "assets/images/123.png",
                              ),
                          )
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius:  BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              "assets/images/cal.png",
                            ),
                          )
                      ),
                    ),
                    // Container(
                    //   height: 50,
                    //   width: 50,
                    //   decoration: BoxDecoration(
                    //       borderRadius:  BorderRadius.circular(10),
                    //       image: const DecorationImage(
                    //         fit: BoxFit.fitHeight,
                    //         image: AssetImage(
                    //           "assets/images/last.png",
                    //         ),
                    //       )
                    //   ),
                    // ),
                  ],
                ),
                const Gap(30),
              ],
            ),
          ),
          const Gap(20),
          const Gap(15),
          ProView(),
          const Gap(20),
          const Gap(15),
        ],
      ),
    );
  }
}
