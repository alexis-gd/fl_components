import 'package:flutter/material.dart';
import '../widgets/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20.0, vertical: 10.0 ),
        children: const [
          CustomCardType1(),
          SizedBox( height: 20),
          CustomCardType2( imageUrl: 'https://cdna.artstation.com/p/assets/images/images/051/193/564/large/bray-dickey-alienwheat3.jpg?1656673756' ),
          SizedBox( height: 20),
          CustomCardType2( name: null, imageUrl: 'https://cdnb.artstation.com/p/assets/covers/images/051/898/847/large/luke-wells-luke-wells-luke-wells-landscape-midjourney.jpg?1658432056' ),
          SizedBox( height: 20),
          CustomCardType2( name: 'Paisaje 3', imageUrl: 'https://cdna.artstation.com/p/assets/images/images/051/193/740/large/bray-dickey-7.jpg?1656674107' ),
          SizedBox( height: 20),
          CustomCardType2( name: 'Paisaje 4', imageUrl: 'https://cdnb.artstation.com/p/assets/images/images/051/898/589/4k/luke-wells-midjourney-generated-image.jpg?1658431270' ),
          SizedBox( height: 50),
        ],
      )
    );
  }
}