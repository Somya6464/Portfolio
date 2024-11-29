import 'package:demo/Controllers/home_controller.dart';
import 'package:demo/Portfolio/widgets/custom_widget.dart';
import 'package:demo/Utils/color_constant.dart';
import 'package:demo/Utils/string_constant.dart';
import 'package:demo/Utils/text_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class DesktopUi extends StatelessWidget {
  const DesktopUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hc = Get.put(HomeController());
    final tw = TextWidgets();
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      backgroundColor: white,
      body: ListView(physics: const BouncingScrollPhysics(), children: [
        /* Expert Electric solution portion */
        Container(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            bottom: height * 0.2,
          ),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [lightBlue, white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              gap(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PopupMenuButton<String>(
                    icon: const Icon(
                      Icons.link,
                      color: pink,
                    ),
                    onSelected: (value) {
                      value == "Instagram"
                          ? launchLinks(
                              "https://www.instagram.com/vishal.chhipa.5811/profilecard/?igsh=MXZna2tyYjEwZHJrYg==")
                          : launchLinks(
                              "https://www.facebook.com/share/ws68eoYfR8ouZvsA/");
                    },
                    itemBuilder: (BuildContext context) {
                      return const [
                        PopupMenuItem(
                          value: "Instagram",
                          child: Text("Instagram"),
                        ),
                        PopupMenuItem(
                          value: "Facebook",
                          child: Text("Facebook"),
                        ),
                      ];
                    },
                  ),
                  gap(width: 2.w),
                  gap(
                    height: 40.h,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                const WidgetStatePropertyAll(lightBlue),
                            shape: WidgetStatePropertyAll(
                                ContinuousRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2.r)),
                                    side: const BorderSide(
                                        color: pink, width: 2)))),
                        onPressed: () {
                          hc.launchCall();
                        },
                        child:
                            tw.textWith600(text: "Call Now ↗", color: white)),
                  )
                ],
              ),
              gap(height: 50.h),
              Wrap(
                runSpacing: height * 0.1,
                spacing: width * 0.1,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WidgetAnimator(
                        child: tw.textBold(
                          text: firstLine,
                          size: 36.sp,
                        ),
                        atRestEffect: WidgetRestingEffects.pulse(),
                      ),
                      tw.textBold(
                          text: secondLine,
                          size: 25.sp,
                          align: TextAlign.left,
                          color: blue),
                      tw.textWith300(text: tagLine, size: 18.sp)
                    ],
                  ),
                  WidgetAnimator(
                    incomingEffect:
                        WidgetTransitionEffects.incomingSlideInFromTop(),
                    atRestEffect: WidgetRestingEffects.fidget(),
                    child: CircleAvatar(
                      backgroundColor: pink,
                      radius: 100.r,
                      child: ClipOval(
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2016/09/28/08/17/electric-test-screwdriver-1699953_1280.png",
                          height: 200.h,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        /* How it works portion */
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              tw.textBold(
                text: howItWorks,
                size: 15.sp,
              ),
              Container(
                height: 1.h,
                width: 20.w,
                color: black,
              ),
              gap(height: 20.h),
              Wrap(
                spacing: 20.w,
                runSpacing: 10.h,
                children: List.generate(
                  hc.howItWorkList.length,
                  (index) => Container(
                    padding: EdgeInsets.all(8.w),
                    width: 250,
                    decoration: BoxDecoration(
                        border: Border.all(color: lightBlue, width: 1.5)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: lightBlue,
                          child: Icon(
                            hc.howItWorkList[index]["icon"] as IconData?,
                            color: black,
                          ),
                        ),
                        tw.textWith600(
                            text: hc.howItWorkList[index]["title"].toString(),
                            align: TextAlign.center),
                        tw.textWith300(
                            text:
                                hc.howItWorkList[index]["subtitle"].toString(),
                            align: TextAlign.center)
                      ],
                    ),
                  ),
                ),
              ),
              gap(height: 50.h),
            ],
          ),
        ),
        /* About Us Container pink wala */
        Container(
          color: pink,
          padding: EdgeInsets.symmetric(horizontal: width * .15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: Image.asset(
                  "assets/images/s4.jpg",
                  width: width * 0.3,
                  fit: BoxFit.fill,
                ),
              ),
              gap(width: 20.w),
              Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      gap(height: 100.h),
                      tw.textBold(text: aboutUs, size: 20.sp, color: white),
                      Container(
                        height: 1.h,
                        width: 25.w,
                        color: white,
                      ),
                      gap(height: 10.h),
                      tw.textWith600(
                          text: aboutUsString, color: white, size: 15.sp),
                      gap(height: 10.h),
                      tw.textWith300(
                          text: aboutUsString1, color: white, size: 10.sp),
                      gap(height: 10.h),
                      rowWithIcon(
                          icon: CupertinoIcons.calendar_badge_plus,
                          text: easyOnlineScheduling,
                          fontsize: 14.sp),
                      gap(height: 10.h),
                      rowWithIcon(
                          icon: CupertinoIcons.lightbulb,
                          text: expertElectrician,
                          fontsize: 15.sp),
                      gap(height: 10.h),
                      rowWithIcon(
                          icon: Icons.av_timer_outlined,
                          text: availability247,
                          fontsize: 15.sp),
                      gap(height: 10.h),
                      rowWithIcon(
                          icon: Icons.currency_rupee_outlined,
                          text: affordability,
                          fontsize: 15.sp),
                    ],
                  ))
            ],
          ),
        ),
        gap(height: 50.h),
        /*Our Services Portion */
        Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.14),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  tw.textBold(
                    text: ourServices,
                    size: 15.sp,
                  ),
                  Container(
                    height: 1.h,
                    width: 20.w,
                    color: black,
                  ),
                  gap(height: 5.h),
                  tw.textWith300(text: aboutUsString, size: 15.sp),
                  gap(height: 10.h),
                  gap(
                    height: height * 0.3,
                    width: width,
                    child: ListView.builder(
                      itemCount: hc.howItWorkList1.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(8.w),
                          margin: EdgeInsets.only(right: 8.w),
                          width: 250,
                          decoration: BoxDecoration(
                              border: Border.all(color: lightBlue, width: 1.5)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: lightBlue,
                                child: Icon(
                                  hc.howItWorkList1[index]["icon"] as IconData?,
                                  color: black,
                                ),
                              ),
                              tw.textWith600(
                                  text: hc.howItWorkList1[index]["title"]
                                      .toString(),
                                  align: TextAlign.center),
                              tw.textWith300(
                                  text: hc.howItWorkList1[index]["subtitle"]
                                      .toString(),
                                  align: TextAlign.center)
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ])),
        gap(height: 100.h),
        tw.textWith300(
            text: "© Copyright: 2024", color: black, align: TextAlign.center),
        tw.textWith300(
            text: "Designed & Developed by: Somya Swaroop Naiwal",
            color: black,
            align: TextAlign.center)
      ]),
    ));
  }
}
