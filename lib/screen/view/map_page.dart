import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps/screen/controller/map_controller.dart';
import 'package:get/get.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Map_controller m1 = Get.put(Map_controller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Google Map",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 250),
              child: Obx(() => Visibility(
                    visible: m1.show.value,
                    child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                            child: Text(

                          "${m1.address}",
                          style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),
                        ))),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.green),
                    onPressed: () {
                      m1.permission();
                    },
                    child: Text("Submit")),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.green),
                    onPressed: () {
                      m1.currentLocation();

                    },
                    child: Text("Location")),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.green),
                    onPressed: () {
                      m1.address.value = "";
                      m1.place.clear();
                      m1.show.value = false;
                    },
                    child: Text("Clear"))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
