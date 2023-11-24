import 'package:flutter/material.dart';
import 'package:flutterdemo/dataModels/SongDataModel.dart';

class SongDetails extends StatelessWidget {
  final SongDataModel songDataModel;

  const SongDetails({super.key, required this.songDataModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Text(songDataModel.SongTitle),
          Text(songDataModel.Singers),
        ],
      ),
    );
    
  }
}
