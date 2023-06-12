import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flash_chat_dream2/app/models/chat_model.dart';
import 'package:flash_chat_dream2/app/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  ChatModel chatModel = ChatModel();
  UserModel userModel = UserModel();
  final chatRef =
      FirebaseFirestore.instance.collection('chats').withConverter<ChatModel>(
            fromFirestore: (snapshot, _) => ChatModel.fromMap(snapshot.data()!),
            toFirestore: (chat, _) => chat.toMap(),
          );
  Future<void> addChat() async {
    // Obtain science-fiction movies
    List<QueryDocumentSnapshot<ChatModel>> chats = await chatRef
        .where('chats', isEqualTo: 'me')
        .get()
        .then((snapshot) => snapshot.docs);

    // Add a movie
    await chatRef.add(
      ChatModel(
        user: userModel.name,
        sms: chatModel.sms,
        userId: userModel.id,
      ),
    );

    // Get a movie with the id 42
    // ChatModel movie42 =
    //     await chatRef.doc('42').get().then((snapshot) => snapshot.data()!);
  }

  // addChat() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat page'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: Text(''),
          ),
          TextField(
            onChanged: (value) {
              chatModel.sms = value;
            },
          ),
          TextButton(
            onPressed: () {
              addChat();
            },
            child: Text('Send'),
          ),
        ],
      ),
    );
  }
}
