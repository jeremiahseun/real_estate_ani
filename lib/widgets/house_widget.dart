// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:real_estate_ani/constants/colors.dart';
import 'package:real_estate_ani/view_provider.dart';

class HouseWidget extends StatelessWidget {
  final double height;
  final double width;
  final String image;
  final String address;
  final TextStyle? style;
  final ViewProvider view;
  const HouseWidget({
    super.key,
    required this.height,
    required this.width,
    required this.image,
    required this.address,
    this.style,
    required this.view,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    height: 45,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(25)),
                    child: Stack(
                      children: [
                        Positioned(
                                left: 0,
                                right: 0,
                                top: 0,
                                bottom: 0,
                                child:
                                    Center(child: Text(address, style: style)))
                            .animate(delay: view.thirdDelay)
                            .fadeIn(duration: view.thirdMove),
                        Positioned(
                          right: 0,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 600),
                            height: 45,
                            width: 45,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: AppColors.white),
                            child: Icon(Icons.arrow_forward_ios_outlined,
                                size: 8, color: AppColors.brown),
                          ),
                        ).animate(delay: view.thirdDelay).move(
                            curve: Curves.fastOutSlowIn,
                            duration: view.thirdMove,
                            begin: const Offset(-200, 0))
                      ],
                    ),
                  )),
            ),
          )
              .animate(delay: view.thirdDelay)
              .fadeIn(duration: view.thirdMove)
              .move(
                  curve: Curves.fastOutSlowIn,
                  duration: view.thirdMove,
                  begin: const Offset(-100, 0)),
          const Gap(10),
        ],
      ),
    );
  }
}
