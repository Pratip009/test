//height => 816.7272727272727
//width => 392.72727272727275
import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

//constant height
  static double height80 = screenHeight / 10.20909090909090875;
  static double height100 = screenHeight / 8.167272727272727;
  static double height16 = screenHeight / 51.04545454545454375;
  static double height30 = screenHeight / 27.224242424242423333333333333333;
  static double height50 = screenHeight / 16.334545454545454;
  static double height20 = screenHeight / 40.836363636363635;

//constant width
  static double width5 = screenWidth / 78.54545454545455;
  static double width80 = screenWidth / 4.909090909090909375;
    static double width134 = screenWidth /2.930800542740841417910447761194;
  static double width350 = screenWidth / 1.1220779220779221428571428571429;

//fontsize
  static double height24 = screenHeight / 34.030303030303029166666666666667;
  static double height14 = screenHeight / 58.337662337662335714285714285714;
  static double height13 = screenHeight / 62.825174825174823076923076923077;
}
