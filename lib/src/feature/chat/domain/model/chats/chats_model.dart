import 'package:freezed_annotation/freezed_annotation.dart';

part 'chats_model.freezed.dart';
part 'chats_model.g.dart';

@freezed
abstract class Chats with _$Chats {
  const factory Chats({
    @Default(false) bool isLoading,
    List<dynamic>? data,
    int? timestamp,
  }) = _Chats;

  factory Chats.fromJson(Map<String, dynamic> json) => _$ChatsFromJson(json);

  factory Chats.initial() => const Chats(isLoading: true, data: []);
}
