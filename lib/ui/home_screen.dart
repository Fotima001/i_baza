
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../local/storage_repository.dart';
import '../models/products_screen.dart';
import '../utils/icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  // int count = StorageRepository.getInt('count');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.62),
              itemBuilder: (context, index) => ZoomTapAnimation(
                onTap: () {
                  // Navigator.pushNamed(context, AppRoutes.aboutScreen,
                  //     arguments: index);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: " ",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                  children: [
                                    TextSpan(
                                      text:
                                      Repository.productsList[index].title,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ]),

                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(Repository.productsList[index].imagePath,
                            height: 100, width: 150),


                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String>like= StorageRepository.getList('name');

List<String> images = [
  AppImages.pc,
  AppImages.pc2,
  AppImages.pc3,
  AppImages.pc4,
  AppImages.pc5,
  AppImages.pc6,
  AppImages.pc7,
  AppImages.pc8,
  AppImages.pc9,
  AppImages.pc10,
  AppImages.pc11,
  AppImages.pc12,
  AppImages.pc13,
  AppImages.pc14,
  AppImages.pc15,
  AppImages.pc16,
  AppImages.pc17,
  AppImages.pc18,
  AppImages.pc19,
  AppImages.pc20,
  AppImages.pc21,
  // AppImages.airpods,
  // AppImages.iphone,
  // AppImages.keyboardMouse,
  // AppImages.pc,
  // AppImages.mac,
  // AppImages.speaker
];
