import 'package:flutter/material.dart';
import 'package:mind_mate/provider/geminiprovider.dart';
import 'package:provider/provider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_html/flutter_html.dart';

class Message {
  final String text;
  final bool isUserMessage;

  Message(this.text, this.isUserMessage);
}

class ConsolePage extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String comments;
  final String likes;
  final String que1;
  final String que2;
  final String que3;
  final String que4;

  const ConsolePage({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.comments,
    required this.likes,
    required this.que1,
    required this.que2,
    required this.que3,
    required this.que4,
  });

  @override
  State<ConsolePage> createState() => _ConsolePageState();
}

class _ConsolePageState extends State<ConsolePage> {
  final List<Message> _messages = [];
  final TextEditingController _controller = TextEditingController();
  bool _showInitialContent = true;

  void _sendMessage(String text) async {
    setState(() {
      _messages.add(Message(text, true));
      _showInitialContent = false;
    });
    _controller.clear();

    final geminiProvider = Provider.of<GeminiProvider>(context, listen: false);
    await geminiProvider.generateContentFromText(prompt: text);
    String processedResponse =
        geminiProvider.response?.replaceAll('*', '') ?? "No response";
    setState(() {
      _messages.add(Message(processedResponse, false));
    });
  }

  Widget _buildMessageBubble(Message message) {
    return Align(
      alignment:
          message.isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: message.isUserMessage
              ? Color.fromARGB(255, 7, 58, 100)
              : Color.fromARGB(255, 41, 40, 40),
          borderRadius: BorderRadius.circular(12),
        ),
        child: message.isUserMessage
            ? SelectableText(
                message.text,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                ),
              )
            : AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    message.text,
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    speed: Duration(milliseconds: 1),
                  ),
                ],
                isRepeatingAnimation: false,
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Column(
        children: [
          Expanded(
            child: _showInitialContent
                ? SingleChildScrollView(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage(widget.imageUrl),
                        ),
                        SizedBox(height: 15),
                        Text(
                          widget.title,
                          style: TextStyle(fontSize: 21, fontFamily: 'Roboto'),
                        ),
                        SizedBox(height: 8),
                        Text(
                          widget.subtitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 40),
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(
                                fit: FlexFit.loose,
                                child: GestureDetector(
                                  onTap: () {
                                    _sendMessage(widget.que1);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 12),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                              Color.fromARGB(255, 74, 72, 72),
                                          width: 2),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                      child: Text(
                                        widget.que1,
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 13),
                              Flexible(
                                fit: FlexFit.loose,
                                child: GestureDetector(
                                  onTap: () {
                                    _sendMessage(widget.que2);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 12),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                              Color.fromARGB(255, 74, 72, 72),
                                          width: 2),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                      child: Text(
                                        widget.que2,
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30),
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(
                                fit: FlexFit.loose,
                                child: GestureDetector(
                                  onTap: () {
                                    _sendMessage(widget.que3);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 12),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                              Color.fromARGB(255, 74, 72, 72),
                                          width: 2),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                      child: Text(
                                        widget.que3,
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 13),
                              Flexible(
                                fit: FlexFit.loose,
                                child: GestureDetector(
                                  onTap: () {
                                    _sendMessage(widget.que4);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 12),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                              Color.fromARGB(255, 74, 72, 72),
                                          width: 2),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                      child: Text(
                                        widget.que4,
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(16.0),
                    itemCount: _messages.length,
                    itemBuilder: (context, index) {
                      return _buildMessageBubble(_messages[index]);
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.chat),
                      hintText: 'Ask ${widget.title}',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    if (_controller.text.trim().isNotEmpty) {
                      _sendMessage(_controller.text.trim());
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
