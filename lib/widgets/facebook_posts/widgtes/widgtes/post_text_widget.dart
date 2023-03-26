import 'package:flutter/material.dart';
import 'package:flutter_facebook/core/app_config.dart';

class PostTextWidget extends StatelessWidget {
  const PostTextWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Text(AppCOnfig.facebookPortuguesePostText);
  }
}