import 'package:WanderSend/screens/customer_view.dart';
import 'package:WanderSend/screens/pro_view.dart';
import 'package:WanderSend/screens/ticket_view.dart';
import 'package:WanderSend/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class info_file extends StatefulWidget {
  const info_file({Key? key}) : super(key: key);

  @override
  State<info_file> createState() => _info_fileState();
}

class _info_fileState extends State<info_file> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Color(0xFF8FAEFA),
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            children: [
              const Gap(40),

              Container(
                  width: 500,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFF4F3FD),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
                  child:Column(
                    mainAxisAlignment:MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child:Container(
                            child:Text('SHIPMENT : $ship',style: const TextStyle(color: Colors.black, fontSize: 16),
                          ),
                      ),
        ),
                       Expanded(
                          child:Container(
                            alignment: Alignment.centerLeft,
                            child: Center(
                                child:Text('CURRENT : $curr',
                                    textAlign: TextAlign.left,style: TextStyle(color: Colors.black, fontSize: 16),)
                            ),
                          )
                       )
                    ],
                  )

              )
            ],
          ),
        ),
      ),
    );
  }
}

