import 'package:example_3/example_3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ExampleController exampleController = Get.put(ExampleController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('GetX Tutorials'),

    ),
    body: Column(
      children: [
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Notification'),
         Obx(() => Switch(
           value: exampleController.notification.value,
           onChanged: (value) {
             exampleController.setNotification(value);
           },
         )),
        ],
       


    )],
    ), 
  );
  }
}
