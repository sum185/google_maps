import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps/screen/view/logo_page.dart';
import 'screen/view/map_page.dart';

void main()
{
  runApp(
    GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(p0) => Logo_Page(),
        'map':(p0) =>  MapPage(),
      },
    )
  );
}