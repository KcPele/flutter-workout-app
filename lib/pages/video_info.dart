import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/colors.dart';
import 'package:get/get.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({super.key});

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List info = [];
  _initData() async {
    dynamic data = await rootBundle.loadString("json/videoinfo.json");
    info = json.decode(data);
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          AppColor.gradientFirst.withOpacity(0.9),
          AppColor.gradientSecond.withOpacity(0.9)
        ], begin: FractionalOffset(0.0, 0.4), end: Alignment.topRight)),
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 70, right: 30, left: 30),
            width: MediaQuery.of(context).size.width,
            height: 300,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: AppColor.secondPageIconColor,
                    ),
                  ),
                  Icon(
                    Icons.info_outline,
                    size: 20,
                    color: AppColor.secondPageIconColor,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Legs Toning",
                style: TextStyle(
                    fontSize: 25, color: AppColor.secondPageTitleColor),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "and Glutes workout",
                style: TextStyle(
                    fontSize: 25, color: AppColor.secondPageTitleColor),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              AppColor.secondPageContainerGradient1stColor,
                              AppColor.secondPageContainerGradient2ndColor
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            size: 20,
                            color: AppColor.secondPageTitleColor,
                          ),
                          Text(
                            "60 min",
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColor.secondPageIconColor),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 250,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              AppColor.secondPageContainerGradient1stColor,
                              AppColor.secondPageContainerGradient2ndColor
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.handyman_outlined,
                            size: 20,
                            color: AppColor.secondPageTitleColor,
                          ),
                          Text(
                            "resisitnt band Ketteball",
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColor.secondPageIconColor),
                          )
                        ]),
                  )
                ],
              ),
            ]),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(70)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Circuit 1 : Legs toning",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: AppColor.circuitsColor),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.loop,
                          size: 30,
                          color: AppColor.loopColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "3 sets",
                          style: TextStyle(
                              fontSize: 14, color: AppColor.setsColor),
                        )
                      ],
                    ),
                  ],
                )
              ]),
            ),
          ))
        ]),
      ),
    );
  }
}
