import 'package:get/get.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class Map_controller extends GetxController{


  RxString address = "".obs;
  RxList<Placemark> place = <Placemark>[].obs;
  RxBool show = false.obs;

 void permission()async{

   await [
     Permission.camera,
     Permission.location,
     Permission.storage,
   ].request();
 }
 void currentLocation()
 async{

   Position p1 = await Geolocator.getCurrentPosition(
     desiredAccuracy: LocationAccuracy.high
   );

   place.value = await placemarkFromCoordinates(p1.latitude, p1.longitude);
    print("$place");

    address.value=place[0].toString();
    show.value=!show.value;
 }

}