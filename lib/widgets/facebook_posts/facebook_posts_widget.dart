import 'package:flutter/material.dart';

import 'widgtes/post_widget.dart';

class FacebookPostsWidget extends StatelessWidget {
  const FacebookPostsWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(20, (index) => Column( // Retorna uma coluna para separar os posts com a barra cinza
        children: [Divider(
          color: Colors.grey.shade400,
          height: 20,
          thickness: 10,
        ),
        const PostWidget(),
        ],
      ),
      ) 

    );
  }
}