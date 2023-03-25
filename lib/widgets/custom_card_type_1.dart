import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({ Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
      elevation: 5,
      shadowColor: AppTheme.primaryLight.withOpacity(.7),
      child: Column(
        children: [

          const ListTile(
            leading: Icon( Icons.account_box_outlined, color: AppTheme.primaryLight ),
            title: Text('Titulo'),
            subtitle: Text('Atque blanditiis illo consequuntur illum. Non non eaque magni eum modi explicabo eligendi.'),
          ),

          Padding(
            padding: const EdgeInsets.only( right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Cancel'),
                  ),
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Ok'),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}