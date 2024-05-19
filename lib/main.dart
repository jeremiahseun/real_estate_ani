import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:real_estate_ani/homepage.dart';
import 'package:real_estate_ani/view_provider.dart';

void main() {
  // Animate.restartOnHotReload = true;
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (context, child) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => ViewProvider()),
            ],
            child: MaterialApp(
                debugShowCheckedModeBanner: false,
                themeAnimationStyle: AnimationStyle(
                    curve: Curves.easeInOut,
                    duration: const Duration(milliseconds: 400)),
                home: const HomePage()),
          );
        });
  }
}
