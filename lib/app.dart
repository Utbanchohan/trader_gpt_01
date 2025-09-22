import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader_gpt/src/core/routes/router.dart';
import 'package:trader_gpt/src/shared/app_start/presentation/app_start_view.dart';
import 'package:trader_gpt/src/shared/custom_scroll_behavour.dart';
import 'package:trader_gpt/src/shared/socket/domain/repository/repository.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(context, ref) {
    final goRouter = ref.watch(routerConfigProvider);

    final buttonStyle = ButtonStyle(
      iconColor: WidgetStateProperty.all<Color>(Colors.black),
      foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
      padding: WidgetStateProperty.all(const EdgeInsets.all(12)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      ),
    );

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: ScreenUtilInit(
        designSize: const Size(375, 812), // Figma design base size
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            scrollBehavior: MyCustomScrollBehavior(),
            theme: ThemeData(
              brightness: Brightness.dark,
              visualDensity: VisualDensity.standard,
              useMaterial3: true,
              textTheme: GoogleFonts.plusJakartaSansTextTheme(),
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(style: buttonStyle),
              textButtonTheme: TextButtonThemeData(style: buttonStyle),
              outlinedButtonTheme: OutlinedButtonThemeData(style: buttonStyle),
            ),
            title: 'Trader GPT',
            debugShowCheckedModeBanner: false,
            routerConfig: goRouter,
            builder: (_, child) {
              return AppStartupWidget(
                onLoaded: (_) => MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                    textScaler: TextScaler.linear(1.0),
                  ),
                  child: child!,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
