import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import '../network/api.dart';

abstract class WebSocketService {
  void connect();
  void dispose();
  void eventListener(String eventName, Function(dynamic) onEvent);
  void eventEmitter(String eventName, Map<String, dynamic> data);
}

@LazySingleton(as: WebSocketService)
class WebSocketManager implements WebSocketService {
  // static final WebSocketManager instance = WebSocketManager._internal();
  // WebSocketManager._internal();

  IO.Socket? _socket;

  String _fetchBaseUrl() {
    return Api.baseUrl;
  }

  @override
  void connect() {
    dispose();
    try {
      _socket = IO.io(_fetchBaseUrl(),
          IO.OptionBuilder().setTransports(['websocket']).build())
        ..connect();

      _socket?.connect();
      _socket?.onConnect(
          (_) => debugPrint('WebSocket connected  ${_socket?.connected}'));
    } catch (e) {
      debugPrint('WebSocket catch: $e');
    }
  }

  @override
  void dispose() {
    if (_socket?.connected ?? false) {
      _socket?.disconnect();
      _socket?.onDisconnect((_) => debugPrint('WebSocket dispose'));
      _socket?.dispose();
    }
    debugPrint('WebSocket dispose dis_connected');
  }

  @override
  void eventListener(String eventName, Function(dynamic) onEvent) {
    debugPrint('WebSocket eventListener $eventName');
    _socket?.on('trade_09999', (data) {
      debugPrint('WebSocket eventListener ${data}');
      onEvent(data);
    });
  }

  @override
  void eventEmitter(String eventName, Map<String, dynamic> data) {
    debugPrint('WebSocket eventEmitter ${data}');
    _socket?.emit(eventName, data);
  }
}

