import 'package:WanderSend/screens/customer_view.dart';
import 'package:WanderSend/screens/ticket_view.dart';
import 'package:WanderSend/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  // get crossAxisAlignment => null;
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          "Good Morning",style: Styles.headLineStyle3,
                        ),
                         const Gap(5),
                         const SizedBox(height:5),
                         Text(
                          "Aakarshan !",style: Styles.headLineStyle1,
                        ),
                      ]
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                       borderRadius:  BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                           image: AssetImage(
                             "assets/images/Group 15.png"
                           )
                        )
                      ),
                    )
                  ],
                ),
                const Gap(25),
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
                          "Your current process !"
                      ),
                    ),
                  ],
                )
                ),
                const Gap(20),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text("Get item shipped", style: Styles.headLineStyle2,),
                //     InkWell(
                //         onTap: (){
                //         },
                //         child: Text("View all",style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
                //   ],
                // )
              ],
            ),
          ),
          const Gap(20),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Get Item Shipped", style: Styles.headLineStyle2,),
                    InkWell(
                        onTap: (){
                        },
                        child: Text("",style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
                  ],
                ),
              ),
            ],
          ),
          const Gap(15),
          TicketView(),
          const Gap(20),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Get your customers", style: Styles.headLineStyle2,),
                    InkWell(
                        onTap: (){
                        },
                        child: Text("",style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
                  ],
                ),
              ),
            ],
          ),
          const Gap(15),
          CustomerView(),
        ],
      ),
    );
  }
}
