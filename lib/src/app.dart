import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ptc_test/src/feature/cart/api/cart_screen_cubit.dart';
import 'package:ptc_test/src/feature/cart/presentation/screen.dart';
import 'package:ptc_test/src/feature/explore/presentation/screen.dart';
import 'package:ptc_test/src/feature/not_implemented/presentation/screen.dart';
import 'package:ptc_test/src/feature/onboarding/presentation/screen.dart';
import 'package:ptc_test/src/feature/order_accepted/presentation/screen.dart';
import 'package:ptc_test/src/feature/splash/presentation/screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CartScreenCubit>(
      create: (context) => CartScreenCubit(),
      child: ScreenUtilInit(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: OnBoardingScreen.route,
          routes: {
            NotImplemented.route: (_) => const NotImplemented(),
            OrderAccepted.route: (_) => const OrderAccepted(),
            CartScreen.route: (_) => const CartScreen(),
            ExploreScreen.route: (_) => const ExploreScreen(),
            OnBoardingScreen.route: (_) => const OnBoardingScreen(),
            SplashScreen.route: (_) => const SplashScreen(),
          },
        ),
      ),
    );
  }
}
