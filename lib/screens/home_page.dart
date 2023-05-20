import 'package:flutter/material.dart';
import 'package:test_1/screens/contact_page.dart';
import 'package:test_1/screens/profile_page.dart';
import 'package:test_1/screens/share_page.dart';
import 'package:test_1/screens/wallet_page.dart';
import 'package:test_1/utils/dimensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    const ContactPage(),
    const WalletPage(),
    const SharePage(),
    ProfilePage(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currenScreen = ProfilePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(
          bucket: bucket,
          child: currenScreen,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF0158BE),
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: Dimensions.height7,
          child: SizedBox(
            height: Dimensions.height72,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: Dimensions.width40,
                      onPressed: () {
                        setState(() {
                          currenScreen = ProfilePage();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_2_rounded,
                            color: currentTab == 0
                                ? const Color(0xFF0158BE)
                                : const Color(0xFFCCCCCC),
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                              color: currentTab == 0
                                  ? const Color(0xFF0158BE)
                                  : const Color(0xFFCCCCCC),
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: Dimensions.width40,
                      onPressed: () {
                        setState(() {
                          currenScreen = const ContactPage();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.headset_mic_sharp,
                            color: currentTab == 1
                                ? const Color(0xFF0158BE)
                                : const Color(0xFFCCCCCC),
                          ),
                          Text(
                            'Contact',
                            style: TextStyle(
                              color: currentTab == 1
                                  ? const Color(0xFF0158BE)
                                  : const Color(0xFFCCCCCC),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: Dimensions.width40,
                      onPressed: () {
                        setState(() {
                          currenScreen = const SharePage();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.share_outlined,
                            color: currentTab == 2
                                ? const Color(0xFF0158BE)
                                : const Color(0xFFCCCCCC),
                          ),
                          Text(
                            'Share',
                            style: TextStyle(
                              color: currentTab == 2
                                  ? const Color(0xFF0158BE)
                                  : const Color(0xFFCCCCCC),
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: Dimensions.width40,
                      onPressed: () {
                        setState(() {
                          currenScreen = const WalletPage();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.wallet_rounded,
                            color: currentTab == 3
                                ? const Color(0xFF0158BE)
                                : const Color(0xFFCCCCCC),
                          ),
                          Text(
                            'Wallet',
                            style: TextStyle(
                              color: currentTab == 3
                                  ? const Color(0xFF0158BE)
                                  : const Color(0xFFCCCCCC),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
