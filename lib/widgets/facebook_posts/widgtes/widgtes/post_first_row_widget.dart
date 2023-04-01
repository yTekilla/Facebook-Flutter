import 'package:flutter/material.dart';
import 'package:flutter_facebook/core/app_config.dart';

class PostFirstRowWidget extends StatelessWidget {
  const PostFirstRowWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            AppCOnfig.imagePath
          ),
        ),
        const SizedBox(width: 8,), // largura entre o avatar e o nome
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Usado para deixar  os textos ao lado do avatar no começo
          children: const [
            Text('Facebook Test', 
            style: TextStyle(
              fontWeight: FontWeight.bold,
              ),
              ),
              Text('Teste Teste', 
              style: TextStyle(
                color: Colors.grey,
                 fontWeight: FontWeight.bold,
                 fontSize: 12 ),
                 )
          ],
        ),
        const Spacer(), // posiciona os botões a direita,
         Icon(
          Icons.more_horiz,
         color: Colors.grey.shade800,
         ),
         const SizedBox(width: 12), // espaço entre os botões a direita
         Icon(
          Icons.close,
          color: Colors.grey.shade800,
          )
      ],
    );
  }
}