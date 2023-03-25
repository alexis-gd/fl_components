import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOpts = AppRoutes.menuOptions;

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter')
      ),
      body: ListView.separated(
        itemBuilder: (context, i) => ListTile(
          leading: Icon( menuOpts[i].icon, color: AppTheme.primaryLight ),
          title: Text( menuOpts[i].name ),
          trailing: Icon( menuOpts[i].icon2, color: AppTheme.primaryLight ),
          onTap: () {

            // final route = MaterialPageRoute(
            //   builder: (context) => const ListView1Screen(),
            // );
            // Navigator.push(context, route);

            Navigator.pushNamed(context, menuOpts[i].route);
            
          },
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(), 
        itemCount: menuOpts.length
      )
    );
  }
}