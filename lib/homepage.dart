// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:real_estate_ani/bottom_nav.dart';
import 'package:real_estate_ani/constants/colors.dart';
import 'package:real_estate_ani/constants/textstyles.dart';
import 'package:real_estate_ani/view_provider.dart';

import 'widgets/house_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Consumer<ViewProvider>(builder: (context, view, _) {
        return Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                    0.45,
                    0.85
                  ],
                      colors: [
                    Color.fromARGB(255, 252, 244, 230),
                    Color.fromARGB(255, 244, 204, 146)
                  ])),
              child: SafeArea(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Gap(15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 600),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.location_on_sharp,
                                  color: Colors.grey,
                                  size: 14,
                                ),
                                const Gap(5),
                                Text(
                                  "Saint Petersburg",
                                  style: AppStyles.black12Normal
                                      .copyWith(color: AppColors.brown),
                                )
                              ],
                            ),
                          )
                              .animate()
                              .fadeIn(
                                  duration: view.firstMove,
                                  curve: Curves.fastEaseInToSlowEaseOut)
                              .slideX(
                                  duration: view.firstMove,
                                  curve: Curves.fastEaseInToSlowEaseOut),
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMzxNpk2kiNMgxR9d-BMnTCx0szxjMbUH0xOOa2WJo7LFMCpihaI2Iom067wTNLmI_9Nw&usqp=CAU"),
                          ).animate().fadeIn(duration: view.firstMove).slide(
                              duration: view.firstMove,
                              begin: const Offset(0.5, 0)),
                        ],
                      ),
                    ),
                    const Gap(30),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hi, Marina",
                                    style: AppStyles.black20Normal.copyWith(
                                      color: AppColors.brown,
                                    ))
                                .animate(delay: view.secondDelay)
                                .fadeIn(duration: view.secondMove),
                            Text("Let's select your\nperfect place",
                                    style: AppStyles.black30Normal)
                                .animate(delay: view.secondDelay)
                                .fadeIn(duration: view.secondMove)
                                .move(
                                    duration: view.secondMove,
                                    begin: const Offset(0, 4.5)),
                          ],
                        ),
                      ),
                    ),
                    const Gap(30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: 160.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.orange,
                              ),
                              alignment: Alignment.center,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const Gap(15),
                                  Text(
                                    "BUY",
                                    style: AppStyles.black14Normal
                                        .copyWith(color: AppColors.white),
                                  ),
                                  const Spacer(),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Countup(
                                        begin: 0,
                                        end: 1034,
                                        duration: const Duration(milliseconds: 2200),
                                        separator: ' ',
                                        style: AppStyles.black35Bold
                                            .copyWith(color: AppColors.white),
                                      ),
                                      Text(
                                        "offers",
                                        style: AppStyles.black14Normal
                                            .copyWith(color: AppColors.white),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const Gap(15),
                                ],
                              ),
                            ),
                          ),
                          const Gap(5),
                          Expanded(
                            child: Container(
                              height: 160.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.white,
                              ),
                              alignment: Alignment.center,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  const Gap(15),
                                  Text(
                                    "RENT",
                                    style: AppStyles.black14Normal
                                        .copyWith(color: AppColors.brown),
                                  ),
                                  const Spacer(),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Countup(
                                        begin: 0,
                                        end: 2212,
                                        duration: const Duration(milliseconds: 2200),
                                        separator: ' ',
                                        style: AppStyles.black35Bold
                                            .copyWith(color: AppColors.brown),
                                      ),
                                      Text(
                                        "offers",
                                        style: AppStyles.black14Normal
                                            .copyWith(color: AppColors.brown),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  const Gap(15),
                                ],
                              ),
                            ),
                          ),
                          const Gap(15),
                        ],
                      ),
                    )
                        .animate(delay: view.secondDelay)
                        .scale(duration: view.secondMove)
                        .fadeIn(duration: view.secondMove),
                    const Gap(30),
                    Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: SingleChildScrollView(
                              physics: const NeverScrollableScrollPhysics(),
                              child: Column(
                                children: [
                                  HouseWidget(
                                    view: view,
                                    height: 200,
                                    image: "assets/images/one-house.jpg",
                                    width: double.infinity,
                                    address: "Gladkova St., 25",
                                  ),
                                  const Gap(10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      HouseWidget(
                                        view: view,
                                        height: 300,
                                        image: "assets/images/one-house.jpg",
                                        width: size.width * .5,
                                        address: "Gladkova St., 25",
                                        style: AppStyles.black10Normal,
                                      ),
                                      const Gap(10),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            HouseWidget(
                                              view: view,
                                              height: 150,
                                              image:
                                                  "assets/images/one-house.jpg",
                                              width: size.width * .5,
                                              style: AppStyles.black10Normal,
                                              address: "Gladkova St., 25",
                                            ),
                                            const Gap(10),
                                            HouseWidget(
                                              view: view,
                                              height: 150,
                                              image:
                                                  "assets/images/one-house.jpg",
                                              width: size.width * .5,
                                              style: AppStyles.black10Normal,
                                              address: "Gladkova St., 25",
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ))
                        .animate(delay: view.thirdDelay)
                        .move(
                            curve: Curves.fastOutSlowIn,
                            duration: view.thirdMove,
                            begin: const Offset(0, 100))
                        .fadeIn(duration: view.thirdMove),
                    const Gap(100),
                  ],
                ),
              )),
            ),
            const Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: BottomNavWidget(),
            ).animate(delay: view.fourthDelay).move(
                curve: Curves.fastOutSlowIn,
                duration: view.fourthMove,
                begin: const Offset(0, 100))
          ],
        );
      }),
    );
  }
}
