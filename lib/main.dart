import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:untitled3/blocc/locale_bloc.dart';
import 'generated/l10n.dart';

// import 'locale_provider.dart';
// import 'bloc.dart';

import 'myhome.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<LocaleBloc>(
        create: (BuildContext context) => LocaleBloc(),
      ),

    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleBloc, LocaleState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'My App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(),

          locale: state.locale,
          supportedLocales: [
            Locale('en', ''), // English
            Locale('hi', ''), // Hindi
          ],
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            // Add your custom delegate here
          ],


        );
      },
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:untitled3/providerrr/pro.dart';
// import 'package:provider/provider.dart';
// import 'package:untitled3/splash.dart';
// import 'generated/l10n.dart';
// import 'myhome.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => LocaleProvider(),
//       child: Consumer<LocaleProvider>(
//         builder: (context, localeProvider, child) {
//           return MaterialApp(
//             title: 'Multilingual App',
//             locale: localeProvider.locale,
//             supportedLocales: [
//               Locale('en', ''), // English
//               Locale('hi', ''), // Hindi
//             ],
//             localizationsDelegates: [
//               S.delegate,
//               GlobalMaterialLocalizations.delegate,
//               GlobalWidgetsLocalizations.delegate,
//               GlobalCupertinoLocalizations.delegate,
//               // Add your custom delegate here
//             ],
//             home: Splash(),
//           );
//         },
//       ),
//     );
//   }
// }
//
