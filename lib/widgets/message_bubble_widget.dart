import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final String sender;
  final bool isMe;
  const MessageBubble(
      {Key? key,
      required this.message,
      required this.sender,
      required this.isMe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            sender,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 12.0,
            ),
          ),
          Material(
              elevation: 5.0,
              borderRadius: isMe
                  ? const BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    )
                  : const BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)),
              color: isMe ? Colors.lightBlueAccent : Colors.blue.shade400,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Text(
                  message,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
