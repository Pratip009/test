// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:test_1/utils/dimensions.dart';

import '../widgets/custom_button.dart';

class ProfilePage extends StatelessWidget {
  List RandomImages = [
    'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80',
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
              height: 85,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: SafeArea(
                left: true,
                top: true,
                right: true,
                bottom: true,
                minimum: const EdgeInsets.all(21.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/test.png',
                      height: 45,
                      width: 45,
                    ),
                    const Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                      size: 26,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 21),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Hello Dipak 👋',
                      style: TextStyle(
                        fontFamily: 'Acumin Pro',
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    'assets/images/1.png',
                    width: double.infinity,
                    height: 66,
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
                            'assets/images/3.png',
                            width: 342,
                            height: 142,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Play Ludo and Earn Money',
                            style: TextStyle(
                              fontFamily: 'Acumin Pro',
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
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
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        '5,00,000+',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Players',
                                        style: TextStyle(
                                          fontSize: 13,
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
                            width: 342,
                            height: 142,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Play Cricket Fantasy League',
                            style: TextStyle(
                              fontFamily: 'Acumin Pro',
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
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
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        '5,00,000+',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        'Players',
                                        style: TextStyle(
                                          fontSize: 13,
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