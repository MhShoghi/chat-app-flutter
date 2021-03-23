import 'package:flutter/material.dart';

enum ChatMessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;

  ChatMessage(
      {this.text,
      @required this.messageType,
      @required this.messageStatus,
      @required this.isSender});
}

List demoChatMessages = [
  ChatMessage(
      text: "Hi Abdolreza",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.not_sent,
      isSender: true),
  ChatMessage(
      text: "Hi Mohamm",
      messageType: ChatMessageType.audio,
      messageStatus: MessageStatus.viewed,
      isSender: true),
  ChatMessage(
      text: "Hi Mohammad",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.not_view,
      isSender: true),
  ChatMessage(
      text: "Hi Sajol",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      isSender: false),
  ChatMessage(
      text: "Hi Mohammad",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      isSender: true),
  ChatMessage(
      text: "Hi Sajol",
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      isSender: false),
  ChatMessage(
      text: "Hi Mohammad",
      messageType: ChatMessageType.video,
      messageStatus: MessageStatus.viewed,
      isSender: true),
];
