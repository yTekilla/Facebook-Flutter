import 'package:flutter/material.dart';
import 'package:flutter_facebook/core/app_config.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300,
                 )
              ),
              child: ClipRRect( // Serve para adicionar a borda ao inserir uma foto.
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                AppCOnfig.imagePath,
               fit: BoxFit.cover, // Serve para expandir a foto e não perder a qualidade.
              ),
              ),
    );
  }
}