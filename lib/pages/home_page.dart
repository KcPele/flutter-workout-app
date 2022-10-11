import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter_application_1/colors.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homePageBackground,
      body: Container(
        padding: EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Training",
                style: TextStyle(
                    fontSize: 30,
                    color: AppColor.homePageTitle,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: AppColor.homePageIcons,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 3),
                        child: Icon(
                          Icons.calendar_today_outlined,
                          size: 20,
                          color: AppColor.homePageIcons,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: AppColor.homePageIcons,
                      ),
                    ]),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                "Your Program",
                style: TextStyle(
                    fontSize: 20,
                    color: AppColor.homePageSubtitle,
                    fontWeight: FontWeight.w700),
              ),
              Expanded(child: Container()),
              Text(
                "Detials",
                style: TextStyle(
                  fontSize: 20,
                  color: AppColor.homePageDetail,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward,
                size: 20,
                color: AppColor.homePageIcons,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 220,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(10, 10),
                      blurRadius: 20,
                      color: AppColor.gradientSecond.withOpacity(0.5))
                ],
                gradient: LinearGradient(colors: [
                  AppColor.gradientFirst.withOpacity(0.8),
                  AppColor.gradientSecond.withOpacity(0.9)
                ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(80))),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next workout",
                      style: TextStyle(
                          fontSize: 16,
                          color: AppColor.homePageContainerTextSmall),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Legs Toning",
                      style: TextStyle(
                          fontSize: 25,
                          color: AppColor.homePageContainerTextSmall),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "and Glutes workout",
                      style: TextStyle(
                          fontSize: 25,
                          color: AppColor.homePageContainerTextBig),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              size: 20,
                              color: AppColor.homePageContainerTextBig,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "60 min",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColor.homePageContainerTextSmall),
                            )
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColor.gradientFirst,
                                  blurRadius: 10,
                                  offset: Offset(4, 8))
                            ],
                          ),
                          child: Icon(
                            Icons.play_circle_fill,
                            color: Colors.white,
                            size: 60,
                          ),
                        )
                      ],
                    )
                  ]),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 28),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 40,
                            offset: Offset(8, 10),
                            color: AppColor.gradientSecond.withOpacity(0.3)),
                        BoxShadow(
                            blurRadius: 40,
                            offset: Offset(-1, -1),
                            color: AppColor.gradientSecond.withOpacity(0.3))
                      ],
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/card.jpg"))),
                ),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(right: 280, bottom: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/figure.png"))),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 150, top: 50),
                  height: 100,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You are doing great",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColor.homePageDetail),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: TextSpan(
                                text: "Keep it up \n",
                                style: TextStyle(
                                    color: AppColor.homePagePlanColor,
                                    fontSize: 16),
                                children: [
                              TextSpan(text: "stick to your plan")
                            ]))
                      ]),
                )
              ],
            ),
          ),
          Row(
            children: [
              Text(
                "Area of focus",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: AppColor.homePageTitle),
              )
            ],
          )
        ]),
      ),
    );
  }
}
