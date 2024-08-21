
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/routing/app_router.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 // Bloc.observer = MyBlocObserver();
 // DioHelper.init();
 // await AppSharedPreferences.initialSharedPreference();
  await ScreenUtil.ensureScreenSize();
  runApp(
      const MyApp()
  );

}
class MyApp extends StatelessWidget {
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360,800),
        minTextAdapt: true,
        builder: (context, _) {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: MaterialApp.router(
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('ar', ''), // Arabic
              ],
              routerConfig: router,
              debugShowCheckedModeBanner: false,
              title: 'plisty',
            ),
          );
        });

  }
}

