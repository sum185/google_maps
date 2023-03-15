import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Logo_Page extends StatefulWidget {
  const Logo_Page({Key? key}) : super(key: key);

  @override
  State<Logo_Page> createState() => _Logo_PageState();
}

class _Logo_PageState extends State<Logo_Page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Get.offNamed('map');
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.green,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('asset/animation/map.json',width: 300,height: 300),
                CircularProgressIndicator(
                  backgroundColor: Colors.yellow,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        )
    );
  }
}
