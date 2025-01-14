import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:g_gizmo/Theme/ThemeNotifier.dart';


  //
  // @override
  // Widget build(BuildContext context) {
  //   return const Placeholder();
  // }


class BaseScaffold extends StatelessWidget{
  final Widget body;
  final String tittle;
  const BaseScaffold({
    required this.body, required this.tittle, super.key
});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(tittle,),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(child: Text('Settings'),
            ),
            ListTile(
              leading: const Icon(Icons.shield_moon),
              title: const Text('Dark Mode'),
              subtitle: const Text('Toggle your Screen for better experince'),
              trailing: Switch(
                value: context.watch<ThemeNotifier>().isDarkMode,
                onChanged: (value){
                  context.read<ThemeNotifier>().toggleTheme(value);
                },
              ),
            ),
            ListTile(
              title: const Text('Login'),
              onTap: (){
                Navigator.pushNamed(context, '/signin');
              },
            ),
            ListTile(
              title: const Text('Account'),
              onTap: (){
                Navigator.pushNamed(context, '/signup');
              },
            ),
            ListTile(
              title: const Text('Home'),
              onTap: (){
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              title: const Text('Cart'),
              onTap: (){
                Navigator.pushNamed(context, '/cart');
              },
            ),
            ListTile(
              title: const Text('Account'),
              onTap: (){
                Navigator.pushNamed(context, '/account');
              },
            ),
            ListTile(
              title: const Text('Log Out'),
              onTap: (){
                Navigator.pushNamed(context, '/Logout');
              },
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}