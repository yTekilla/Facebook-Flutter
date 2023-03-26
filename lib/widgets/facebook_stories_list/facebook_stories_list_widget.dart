import 'package:flutter/material.dart';
import 'package:flutter_facebook/widgets/facebook_stories_list/widgets/cardWidget.dart';
import 'package:flutter_facebook/widgets/facebook_stories_list/widgets/first_card_widget.dart';

class FacebookStoriesListWidget extends StatefulWidget {
  const FacebookStoriesListWidget({super.key});
  
  @override
  State<FacebookStoriesListWidget> createState() => _FacebookStoriesListWidgetState();
}
class _FacebookStoriesListWidgetState extends State<FacebookStoriesListWidget> {
  final _storyList = List.generate(15, (index) => null); // Lista dos stories.
  late ScrollController _scrollCrtl; // Pega o offset do scroll, ao arrastar para a esquerda,aumenta o offset


  @override
  void initState() {
    super.initState();

    _scrollCrtl = ScrollController();
    _scrollCrtl.addListener(scrollListener); // Toda vez que algo mudar nessa variável será usado o setState.
  }

// Fica escutando alterações no ScrollController
  void scrollListener(){
    if(_scrollCrtl.hasClients){ // Verifica se a variável está em algum wodget
    setState(() {});
    }
  }

@override
  void dispose() { // Dispose é necessário para remover o objeto da memória.
  _scrollCrtl
  ..removeListener(scrollListener)
  ..dispose();
    super.dispose();
  }

double get _getScrollOffset { // Se o a variável _scrollCrtl não está em neehum widget, retorna 0;
  if(_scrollCrtl.hasClients) {
    return _scrollCrtl.offset;
  }
  return 0;
}

  @override
  Widget build(BuildContext context) {
    return Column( // Column porue será usado um sizedBox
    children: [
      const SizedBox(height: 32),
      Stack( // Usado para que a prmiera foto nos stories fique em cima das outras fotos.
        alignment: Alignment.centerLeft,
        children: [
          SizedBox(height: 150,
          //Fazendo os cards com borda
           child: ListView.separated(
            scrollDirection: Axis.horizontal, // Para deixar o scroll horizontal
            controller: _scrollCrtl, // Para fazer a animação no primeiro storie
            itemBuilder: (_, int index) {
            return index == 0  ? Container(
              margin: const EdgeInsets.only(left: 5),
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300)
              ),
            ) : const CardWidget(); //  Verifica se é o prmeiro card dos stories ou não
           }, separatorBuilder: (_, __,){
            return const SizedBox(width: 12); // Largura entre os cards
           }, 
           itemCount: _storyList.length),
           ),
           Positioned( // Widget do primeiro Card.
            child: FirstCardWidget(offset: _getScrollOffset,)
           )
        ],
      ), 
    ],
    );
  }
}