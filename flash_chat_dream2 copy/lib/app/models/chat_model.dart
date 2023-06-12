// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ChatModel {
  String? user;
  String? sms;
  String? userId;
  ChatModel({
    this.user,
    this.sms,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user,
      'sms': sms,
      'userId': userId,
    };
  }

  factory ChatModel.fromMap(Map<String, dynamic> map) {
    return ChatModel(
      user: map['user'] as String,
      sms: map['sms'] as String,
      userId: map['userId'] as String,
    );
  }

  // String toJson() => json.encode(toMap());

  // factory ChatModel.fromJson(String source) =>
  //     ChatModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
