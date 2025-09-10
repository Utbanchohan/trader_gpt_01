import 'package:flutter/material.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar:AppBar(
        title: const Text('Chat Page'),
      ),
      body: Column(
        children: [
          MdSnsText(
            'Welcome to Trader GPT Chat!',
            // style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

        ],
      ),
    );
  }
}