// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gap/gap.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';
import 'package:real_estate_ani/constants/colors.dart';
import 'package:real_estate_ani/constants/enums.dart';
import 'package:real_estate_ani/constants/textstyles.dart';
import 'package:real_estate_ani/view_provider.dart';

import 'bottom_nav.dart';

class MapView extends StatefulWidget {
  const MapView({super.key});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Consumer<ViewProvider>(builder: (context, view, _) {
        return Stack(
          fit: StackFit.expand,
          children: [
            FlutterMap(
                options: const MapOptions(
                  interactionOptions:
                      InteractionOptions(enableMultiFingerGestureRace: false),
                  initialZoom: 15.3,
                  initialCenter: LatLng(6.5899896, 3.9808723),
                  backgroundColor: Colors.black,
                ),
                children: [
                  openStreetMapTileLayer,
                  MarkerLayer(
                    rotate: false,
                    markers: [
                      Marker(
                        point: const LatLng(6.5927984, 3.9822939),
                        width: view.width,
                        height: 40,
                        alignment: Alignment.centerLeft,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          height: 40,
                          width: view.width,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.orange,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                          child: Visibility(
                            visible: view.mapDetailsView ==
                                MapDetailsView.withoutLayer,
                            replacement: Text(
                              '13,3 mn P',
                              style: AppStyles.black12Normal
                                  .copyWith(color: AppColors.white),
                            ),
                            child: Icon(
                              EvaIcons.calendarOutline,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                      Marker(
                        point: const LatLng(6.5940793, 3.9789646),
                        width: view.width,
                        height: 40,
                        alignment: Alignment.centerLeft,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          height: 40,
                          width: view.width,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.orange,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                          child: Visibility(
                            visible: view.mapDetailsView ==
                                MapDetailsView.withoutLayer,
                            replacement: Text(
                              '13,3 mn P',
                              style: AppStyles.black12Normal
                                  .copyWith(color: AppColors.white),
                            ),
                            child: Icon(
                              EvaIcons.calendarOutline,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                      Marker(
                        point: const LatLng(6.5958434, 3.9857431),
                        width: view.width,
                        height: 40,
                        alignment: Alignment.centerLeft,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          height: 40,
                          width: view.width,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: AppColors.orange,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                          child: Visibility(
                            visible: view.mapDetailsView ==
                                MapDetailsView.withoutLayer,
                            replacement: Text(
                              '13,3 mn P',
                              style: AppStyles.black12Normal
                                  .copyWith(color: AppColors.white),
                            ),
                            child: Icon(
                              EvaIcons.calendarOutline,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ).animate(delay: view.thirdDelay).fadeIn(),
                ]),
            Positioned(
              bottom: 100,
              left: 20,
              right: 10,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(builder: (context) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () async {
                            Offset offs = const Offset(0, 0);
                            final RenderBox button =
                                context.findRenderObject()! as RenderBox;
                            final RenderBox overlay = Navigator.of(context)
                                .overlay!
                                .context
                                .findRenderObject()! as RenderBox;
                            final RelativeRect position = RelativeRect.fromRect(
                              Rect.fromPoints(
                                button.localToGlobal(offs, ancestor: overlay),
                                button.localToGlobal(
                                    button.size.bottomRight(Offset.zero) + offs,
                                    ancestor: overlay),
                              ),
                              Offset.zero & overlay.size,
                            );
                            final res = await showMenu<int>(
                                context: context,
                                position: position,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                items: [
                                  PopupMenuItem(
                                    value: 0,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.security_outlined,
                                          color: view.mapDetailsView ==
                                                  MapDetailsView.cosyAreas
                                              ? AppColors.orange
                                              : Colors.black,
                                          size: 14,
                                        ),
                                        const Gap(7),
                                        Text(
                                          'Cosy areas',
                                          style: AppStyles.black14Normal
                                              .copyWith(
                                                  color: view.mapDetailsView ==
                                                          MapDetailsView
                                                              .cosyAreas
                                                      ? AppColors.orange
                                                      : Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  PopupMenuItem(
                                    value: 1,
                                    child: Row(
                                      children: [
                                        Icon(Icons.wallet,
                                            size: 14,
                                            color: view.mapDetailsView ==
                                                    MapDetailsView.price
                                                ? AppColors.orange
                                                : Colors.black),
                                        const Gap(7),
                                        Text(
                                          'Price',
                                          style: AppStyles.black14Normal
                                              .copyWith(
                                                  color: view.mapDetailsView ==
                                                          MapDetailsView.price
                                                      ? AppColors.orange
                                                      : Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  PopupMenuItem(
                                    value: 2,
                                    child: Row(
                                      children: [
                                        Icon(Icons.badge_sharp,
                                            size: 14,
                                            color: view.mapDetailsView ==
                                                    MapDetailsView.infra
                                                ? AppColors.orange
                                                : Colors.black),
                                        const Gap(7),
                                        Text(
                                          'Infrastructure',
                                          style: AppStyles.black14Normal
                                              .copyWith(
                                                  color: view.mapDetailsView ==
                                                          MapDetailsView.infra
                                                      ? AppColors.orange
                                                      : Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  PopupMenuItem(
                                    value: 3,
                                    child: Row(
                                      children: [
                                        Icon(Icons.menu_sharp,
                                            size: 14,
                                            color: view.mapDetailsView ==
                                                    MapDetailsView.withoutLayer
                                                ? AppColors.orange
                                                : Colors.black),
                                        const Gap(7),
                                        Text(
                                          'Without any layer',
                                          style: AppStyles.black14Normal
                                              .copyWith(
                                                  color: view.mapDetailsView ==
                                                          MapDetailsView
                                                              .withoutLayer
                                                      ? AppColors.orange
                                                      : Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]);
                            if (res != null) {
                              if (res == 1) {
                                view.setPriceWidth();
                              }
                              if (res == 3) {
                                view.setNoLayerWidth();
                              }
                            }
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(.6)),
                            child: Icon(
                              size: 16,
                              EvaIcons.paperPlaneOutline,
                              color: Colors.white.withOpacity(.7),
                            ),
                          ),
                        ),
                        const Gap(7),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(.6)),
                          child: Icon(
                            EvaIcons.mapOutline,
                            size: 16,
                            color: Colors.white.withOpacity(.7),
                          ),
                        ),
                      ],
                    );
                  }),
                  Container(
                    height: 40,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey.withOpacity(.6)),
                    child: Row(
                      children: [
                        Icon(
                          EvaIcons.listOutline,
                          size: 16,
                          color: Colors.white.withOpacity(.7),
                        ),
                        const Gap(15),
                        Text(
                          "List of variants",
                          style: AppStyles.black12Normal
                              .copyWith(color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ).animate(delay: view.firstMove).fadeIn(),
            ),
            const Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: BottomNavWidget(),
            ),
            Positioned(
                top: 30,
                left: 0,
                right: 0,
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 4,
                        child: SizedBox(
                          height: 50,
                          width: size.width,
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(horizontal: 40),
                            padding: const EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Row(
                              children: [
                                Icon(Icons.search_rounded),
                                Gap(10),
                                Text("Saint Petersburg")
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.menu),
                        ),
                      )
                    ],
                  ),
                )).animate(delay: view.firstMove).fadeIn(),
          ],
        );
      }),
    );
  }
}

TileLayer get openStreetMapTileLayer => TileLayer(
      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
      userAgentPackageName: 'com.example.real_estate_ani',
      // Use the recommended flutter_map_cancellable_tile_provider package to
      // support the cancellation of loading tiles.
      tileBuilder: _darkModeTileBuilder,
    );

Widget _darkModeTileBuilder(
  BuildContext context,
  Widget tileWidget,
  TileImage tile,
) {
  return ColorFiltered(
    colorFilter: const ColorFilter.matrix(<double>[
      -0.2126, -0.7152, -0.0722, 0, 255, // Red channel
      -0.2126, -0.7152, -0.0722, 0, 255, // Green channel
      -0.2126, -0.7152, -0.0722, 0, 255, // Blue channel
      0, 0, 0, 1, 0, // Alpha channel
    ]),
    child: tileWidget,
  );
}
