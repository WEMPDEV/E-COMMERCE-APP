import 'package:flutter/material.dart';
import 'package:g_gizmo/Account%20Sign%20up%20and%20SIgn%20In/Create%20Account.dart';
import 'package:g_gizmo/Account%20Sign%20up%20and%20SIgn%20In/Login%20Account.dart';
import 'package:g_gizmo/Account%20Sign%20up%20and%20SIgn%20In/Welcome%20Page.dart';
import 'package:g_gizmo/Onboarding%20Screens/Onboarding.dart';
import 'package:g_gizmo/Pages/applaince.dart';
import 'package:g_gizmo/Pages/bottomNavBar.dart';
import 'package:g_gizmo/Pages/carr_provider.dart';
import 'package:g_gizmo/Pages/cart.dart';
import 'package:g_gizmo/Pages/favourite.dart';
import 'package:g_gizmo/Pages/favourite_provider.dart';
import 'package:g_gizmo/Pages/profile.dart';
import 'package:provider/provider.dart';

class Themescaffold extends StatefulWidget {
  const Themescaffold({super.key});

  @override
  State<Themescaffold> createState() => _ThemescaffoldState();
}
bool _iconBool = false;

IconData _iconLight = Icons.wb_sunny;
IconData _iconDark = Icons.nights_stay;

ThemeData _lightTheme = ThemeData(
  primarySwatch: Colors.amber,
  brightness: Brightness.light,
);

ThemeData _darkTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
);


class _ThemescaffoldState extends State<Themescaffold> {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavouriteSaved()),
        ChangeNotifierProvider(create: (_) => CarrProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:_iconBool ? _darkTheme : _lightTheme,
        routes: {
          '/welcome': (context) => const WelcomePage(),
          '/signup': (context) => const AccountScreen(),
          '/signin': (context) => const AccountLogin(),
          '/navbar': (context) => const BottomNavbar(),
          '/logout': (context) => const AccountLogin(),
          '/saved': (context) => const Favourite(),
          '/cart': (context) => const Cart(),
          '/apple': (context) => const Applaince(),
          '/profile': (context) => const Account(),
        },
        home: Scaffold(
          backgroundColor: const Color(0xFF25364A),
        appBar: AppBar(
          backgroundColor: const Color(0xFF25364A),
          actions: [
            IconButton(
                onPressed: (){
                  setState(() {
                    _iconBool = !_iconBool;
                  });
                },
                icon: Icon(_iconBool ? _iconDark:_iconLight),color: Colors.green,)
          ],
        ),
          body: const Onboarding(),
      )
      ),
    );
  }
}
