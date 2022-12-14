import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:studio_foto/app/controller/authController.dart';
import 'firebase_options.dart';
// import 'package:intl/date_symbol_data_local.dart';
import 'package:studio_foto/utils/myCustomScrollBehavior.dart';
import 'package:studio_foto/utils/myThemeData.dart';
import 'app/routes/app_pages.dart';
// import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(AuthController(), permanent: true);

  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // await initializeDateFormatting('id_ID', null).then((_) =>
  runApp(StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        String init = Routes.LOGIN;
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasData) {
          init = Routes.DASHBOARD;
          // debugPrint("Pengguna sedang masuk: ${snapshot.data!.email}");
        }

        return Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
            child: GetMaterialApp(
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate
              ],
              supportedLocales: const [Locale('id'), Locale('en')],
              theme: myThemedata,
              title: "Application",
              initialRoute: init,
              getPages: AppPages.routes,
              debugShowCheckedModeBanner: false,
              scrollBehavior: MyCustomScrollBehavior(),
            ),
          ),
        );
      })); //,
  // );
}
