// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_1/utils/dimensions.dart';

import '../widgets/custom_button.dart';

class ProfilePage extends StatelessWidget {
  //! Random images from network to create avatar stack
  List RandomImages = [
    'https://imageio.forbes.com/specials-images/imageserve/61688aa1d4a8658c3f4d8640/Antonio-Juliano/0x0.jpg?format=jpg&width=960',
    'https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
    'https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg'
  ];
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(5.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Dimensions.height85,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: SafeArea(
                left: true,
                top: true,
                right: true,
                bottom: true,
                minimum: EdgeInsets.all(Dimensions.height21),
                //! Safearea
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/test.png',
                      height: Dimensions.height45,
                      width: Dimensions.width45,
                    ),
                    Icon(
                      CupertinoIcons.bell,
                      color: Colors.white,
                      size: Dimensions.height26,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 21),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Hello Dipak 👋',
                      style: TextStyle(
                        fontFamily: 'Acumin Pro',
                        fontSize: Dimensions.height24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height14,
                  ),
                  Image.asset(
                    'assets/images/1.png',
                    width: double.infinity,
                    height: Dimensions.height66,
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimensions.height16),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.height7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/3.png',
                            width: Dimensions.width342,
                            height: Dimensions.height142,
                          ),
                          SizedBox(
                            height: Dimensions.height20 / 2,
                          ),
                          Text(
                            'Play Ludo and Earn Money',
                            style: TextStyle(
                              fontFamily: 'Acumin Pro',
                              fontSize: Dimensions.height20,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.height20 / 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  for (int i = 0; i < RandomImages.length; i++)
                                    Align(
                                      widthFactor: 0.7,
                                      child: CircleAvatar(
                                        radius: 22,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundImage:
                                              NetworkImage(RandomImages[i]),
                                        ),
                                      ),
                                    ),
                                  SizedBox(
                                    width: Dimensions.height20 / 2,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '5,00,000+',
                                        style: TextStyle(
                                          fontSize: Dimensions.height16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Players',
                                        style: TextStyle(
                                          fontSize: Dimensions.height13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              CustomButton(
                                text: 'Play Now',
                                onPressed: () {},
                                height: Dimensions.height20 * 2,
                                width: Dimensions.width134,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/2.png',
                            width: Dimensions.width342,
                            height: Dimensions.height142,
                          ),
                          SizedBox(
                            height: Dimensions.height20 / 2,
                          ),
                          Text(
                            'Play Cricket Fantasy League',
                            style: TextStyle(
                              fontFamily: 'Acumin Pro',
                              fontSize: Dimensions.height20,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.height20 / 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  for (int i = 0; i < RandomImages.length; i++)
                                    Align(
                                      widthFactor: 0.7,
                                      child: CircleAvatar(
                                        radius: 22,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundImage:
                                              NetworkImage(RandomImages[i]),
                                        ),
                                      ),
                                    ),
                                  SizedBox(
                                    width: Dimensions.width40 / 4,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '5,00,000+',
                                        style: TextStyle(
                                          fontSize: Dimensions.height16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Players',
                                        style: TextStyle(
                                          fontSize: Dimensions.height13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              CustomButton(
                                text: 'Play Now',
                                onPressed: () {},
                                height: Dimensions.height20 * 2,
                                width: Dimensions.width134,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
