import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyplansBinding extends  Bindings{
@override
 void dependencies() {
     Get.lazyPut(() => MyplansBinding());
  }
}