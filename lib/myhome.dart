import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/blocc/locale_bloc.dart';
import 'package:untitled3/generated/l10n.dart';




class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(s.appTitle),
        actions: <Widget>[
          _buildLanguageMenu(context),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              s.helloTitle,
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              s.welcomeMessage,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageMenu(BuildContext context) {
    return BlocBuilder<LocaleBloc, LocaleState>(
      builder: (context, state) {
        return PopupMenuButton<Locale>(
          onSelected: (Locale newLocale) {
            context.read<LocaleBloc>().add(ChangeLocale( locale1: newLocale));
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<Locale>>[
            PopupMenuItem<Locale>(
              value: Locale('en', ''),
              child: Text('English'),
            ),
            PopupMenuItem<Locale>(
              value: Locale('hi', ''),
              child: Text('हिंदी'),
            ),
          ],
        );
      },
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:untitled3/providerrr/pro.dart';
// import 'generated/l10n.dart';
//
//
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final s = S.of(context);
//     final localeProvider = Provider.of<LocaleProvider>(context);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(s.appTitle),
//         actions: <Widget>[
//           _buildLanguageMenu(context, localeProvider),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               s.helloTitle,
//               style: Theme.of(context).textTheme.headline4,
//             ),
//             Text(
//               s.welcomeMessage,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildLanguageMenu(BuildContext context, LocaleProvider localeProvider) {
//     return PopupMenuButton<Locale>(
//       onSelected: (Locale locale) {
//         localeProvider.setLocale(locale);
//       },
//       icon: Icon(Icons.language),
//       itemBuilder: (BuildContext context) => <PopupMenuEntry<Locale>>[
//         PopupMenuItem<Locale>(
//           value: Locale('en', ''),
//           child: Text('English'),
//         ),
//         PopupMenuItem<Locale>(
//           value: Locale('hi', ''),
//           child: Text('हिंदी'),
//         ),
//       ],
//     );
//   }
// }
// // TODO Implement this library.