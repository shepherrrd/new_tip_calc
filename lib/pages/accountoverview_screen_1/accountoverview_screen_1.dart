import 'package:flutter/material.dart';
import '../../ui/export.dart';

class accountoverview_screen_1 extends StatefulWidget {
  const accountoverview_screen_1({Key? key}) : super(key: key);

  @override
  _accountoverview_screen_1State createState() =>
      _accountoverview_screen_1State();
}

class _accountoverview_screen_1State extends State<accountoverview_screen_1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double widthScale = width / 375;
    double heightScale = height / 812;

    return Scaffold(
      backgroundColor: FvColors.screen1Background,
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(children: [
                const SizedBox(height: 812, width: 375),
//-- Component bg_Container_7 --//
                Positioned(
                  left: 0,
                  top: 246,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),

//-- End bg_Container_7 --//
//-- Component bg_Container_8 --//
                Positioned(
                  left: 251,
                  top: 0,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),

//-- End bg_Container_8 --//
//-- Component card_Container_9 --//
                Positioned(
                  left: 24,
                  top: 155,
                  child: Container(
                    width: 327,
                    height: 197,
                    decoration: BoxDecoration(
                      color: FvColors.imageview32Background,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x337a5dba),
                          blurRadius: 30,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
//-- Component cardbg_Container_10 --//
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 327,
                              height: 197,
                              decoration: BoxDecoration(
                                color: FvColors.imageview32Background,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x337a5dba),
                                    blurRadius: 30,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Stack(
                                  alignment: Alignment.center,
                                  clipBehavior: Clip.none,
                                  children: [
//-- Component Rectangle_Container_11 --//
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 327,
                                        height: 197,
                                        decoration: BoxDecoration(
                                          color: FvColors.imageview32Background,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color(0x337a5dba),
                                              blurRadius: 30,
                                              offset: Offset(0, 3),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

//-- End Rectangle_Container_11 --//
//-- Component MaskGroup_Container_12 --//
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 327,
                                        height: 197,
                                        decoration: BoxDecoration(
                                          color: FvColors.container12Background,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Stack(
                                            alignment: Alignment.center,
                                            clipBehavior: Clip.none,
                                            children: [
//-- Component Rectangle_Container_13 --//
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 327,
                                                  height: 197,
                                                  decoration: BoxDecoration(
                                                    color: FvColors
                                                        .container12Background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                ),
                                              ),

//-- End Rectangle_Container_13 --//
//-- Component Ellipse_Container_14 --//
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 200,
                                                  height: 200,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0),
                                                  ),
                                                ),
                                              ),

//-- End Ellipse_Container_14 --//
//-- Component Ellipse_Container_15 --//
                                              Positioned(
                                                left: 214,
                                                top: 9,
                                                child: Container(
                                                  width: 200,
                                                  height: 200,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0),
                                                  ),
                                                ),
                                              ),

//-- End Ellipse_Container_15 --//
                                            ]),
                                      ),
                                    ),

//-- End MaskGroup_Container_12 --//
//-- Component Rectangle_Container_16 --//
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 327,
                                        height: 197,
                                        decoration: BoxDecoration(
                                          color: FvColors.container16Background,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                      ),
                                    ),

//-- End Rectangle_Container_16 --//
//-- Component Rectangle_Container_17 --//
                                    Positioned(
                                      left: 0,
                                      top: 109,
                                      child: Container(
                                        width: 327,
                                        height: 88,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                      ),
                                    ),

//-- End Rectangle_Container_17 --//
                                  ]),
                            ),
                          ),

//-- End cardbg_Container_10 --//
//-- Component CurrentBalance_TextView_18 --//
                          const Positioned(
                              left: 16,
                              top: 26,
                              child: Text(
                                "Current Balance",
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: FvColors.textview31FontColor,
                                    wordSpacing: 1.0),
                              )),
//-- End CurrentBalance_TextView_18 --//
//-- Component _TextView_19 --//
                          const Positioned(
                              left: 16,
                              top: 58,
                              child: Text(
                                "\$12567.89",
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500,
                                    color: FvColors.textview31FontColor,
                                    wordSpacing: 1.0),
                              )),
//-- End _TextView_19 --//
//-- Component _TextView_20 --//
                          const Positioned(
                              left: 16,
                              top: 130,
                              child: Text(
                                "3452 1235 7894 1678",
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: FvColors.imageview32Background,
                                    wordSpacing: 1.0),
                              )),
//-- End _TextView_20 --//
//-- Component _TextView_21 --//
                          const Positioned(
                              left: 16,
                              top: 158,
                              child: Text(
                                "05/2025",
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: FvColors.imageview32Background,
                                    wordSpacing: 1.0),
                              )),
//-- End _TextView_21 --//
                        ]),
                  ),
                ),

//-- End card_Container_9 --//
//-- Component lasttransactions_Container_22 --//
                Positioned(
                  left: 24,
                  top: 387,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Flex(
                      direction: Axis.vertical,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
//-- Component LASTtransactions_TextView_23 --//
                        const Text(
                          "LAST transactions",
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: FvColors.textview30FontColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

//-- End LASTtransactions_TextView_23 --//
                        const SizedBox(
                          height: 16,
                        ),
//-- Component Frame_Button_24 --//
                        SizedBox(
                          height: 76,
                          width: 327,
                          child: TextButton(
                            child: const Text("\$29.90",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  color: FvColors.textview31FontColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: FvColors.imageview32Background,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                                side: const BorderSide(
                                  width: 0,
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
//-- End Frame_Button_24 --//
                        const SizedBox(
                          height: 16,
                        ),
//-- Component Frame_Button_25 --//
                        SizedBox(
                          height: 76,
                          width: 327,
                          child: TextButton(
                            child: const Text("\$9.50",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  color: FvColors.textview31FontColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: FvColors.imageview32Background,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                                side: const BorderSide(
                                  width: 0,
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
//-- End Frame_Button_25 --//
                        const SizedBox(
                          height: 16,
                        ),
//-- Component Frame_Button_26 --//
                        SizedBox(
                          height: 76,
                          width: 327,
                          child: TextButton(
                            child: const Text("\$19.30",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  color: FvColors.textview31FontColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                )),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: FvColors.imageview32Background,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                                side: const BorderSide(
                                  width: 0,
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
//-- End Frame_Button_26 --//
                        const SizedBox(
                          height: 16,
                        ),
//-- Component Frame_Container_27 --//
                        Container(
                          width: 327,
                          height: 76,
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 16,
                            bottom: 16,
                          ),
                          decoration: BoxDecoration(
                            color: FvColors.imageview32Background,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
//-- Component Group_Container_28 --//
                              Container(
                                width: 239,
                                height: 44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                child: Stack(
                                    alignment: Alignment.center,
                                    clipBehavior: Clip.none,
                                    children: [
//-- Component Udemy_TextView_29 --//
                                      const Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Text(
                                            "Udemy",
                                            overflow: TextOverflow.visible,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: FvColors
                                                    .textview31FontColor,
                                                wordSpacing: 1.0),
                                          )),
//-- End Udemy_TextView_29 --//
//-- Component Mon_TextView_30 --//
                                      const Positioned(
                                          left: 0,
                                          top: 27,
                                          child: Text(
                                            "Mon 11.03.2021",
                                            overflow: TextOverflow.visible,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                                color: FvColors
                                                    .textview30FontColor,
                                                wordSpacing: 1.0),
                                          )),
//-- End Mon_TextView_30 --//
                                    ]),
                              ),

//-- End Group_Container_28 --//
                              const SizedBox(
                                width: 0,
                              ),
//-- Component _TextView_31 --//
                              const Text(
                                "\$20.00",
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: FvColors.textview31FontColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

//-- End _TextView_31 --//
                            ],
                          ),
                        ),

//-- End Frame_Container_27 --//
                      ],
                    ),
                  ),
                ),
//-- End lasttransactions_Container_22 --//
//-- Component bottomnav_ImageView_32 --//
                Positioned(
                  left: 0,
                  top: 730,
                  child: SizedBox(
                    width: 375,
                    height: 82,
                    child:
                        Image.asset("assets/bottomnav_ImageView_32-375x82.png"),
                  ),
                ),
//-- End bottomnav_ImageView_32 --//
//-- Component user_Container_33 --//
                Positioned(
                  left: 24,
                  top: 63,
                  child: Container(
                    width: 194,
                    height: 66,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
//-- Component avatar_Container_34 --//
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 66,
                              height: 66,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              child: Stack(
                                  alignment: Alignment.center,
                                  clipBehavior: Clip.none,
                                  children: [
//-- Component Ellipse_ImageView_35 --//
                                    Positioned(
                                      left: 4,
                                      top: 4,
                                      child: SizedBox(
                                        width: 58,
                                        height: 58,
                                        child: Image.asset(
                                            "assets/Ellipse_ImageView_35-58x58.png"),
                                      ),
                                    ),
//-- End Ellipse_ImageView_35 --//
//-- Component Ellipse_Container_36 --//
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 66,
                                        height: 66,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                      ),
                                    ),

//-- End Ellipse_Container_36 --//
//-- Component Ellipse_Container_37 --//
                                    Positioned(
                                      left: 53,
                                      top: 3,
                                      child: Container(
                                        width: 13,
                                        height: 13,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                      ),
                                    ),

//-- End Ellipse_Container_37 --//
                                  ]),
                            ),
                          ),

//-- End avatar_Container_34 --//
//-- Component Goodmorning_TextView_38 --//
                          const Positioned(
                              left: 88,
                              top: 7,
                              child: Text(
                                "Good morning",
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: FvColors.textview39FontColor,
                                    wordSpacing: 1.0),
                              )),
//-- End Goodmorning_TextView_38 --//
//-- Component ANDREA_TextView_39 --//
                          const Positioned(
                              left: 88,
                              top: 35,
                              child: Text(
                                "ANDREA",
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: FvColors.textview39FontColor,
                                    wordSpacing: 1.0),
                              )),
//-- End ANDREA_TextView_39 --//
                        ]),
                  ),
                ),

//-- End user_Container_33 --//
              ]),
            ),
//-- Component ScrollContainer --//
//-- End ScrollContainer --//
          ],
        ),
      ),
    );
  }
}
