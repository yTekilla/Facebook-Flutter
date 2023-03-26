import 'package:flutter/material.dart';
import '../widgets/facebook_posts/facebook_posts_widget.dart';
import '../widgets/facebook_stories_list/facebook_stories_list_widget.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Como é uma tela se utiliza o Scaffold
      body: SafeArea(  // SafeArea esconde a status bar do celular
        child: SingleChildScrollView( // Necessário pra fazer o scroll da página
          child: Column(
            children: const [
              FacebookStoriesListWidget(),
              FacebookPostsWidget(),
            ],
          ),
        ), 
      ),
    );
  }
}