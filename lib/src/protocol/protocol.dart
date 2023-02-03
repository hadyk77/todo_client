/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'todo_class.dart' as _i2;
import 'package:todo_client/src/protocol/todo_class.dart' as _i3;
export 'todo_class.dart';
export 'client.dart'; // ignore_for_file: equal_keys_in_map

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Todo) {
      return _i2.Todo.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Todo?>()) {
      return (data != null ? _i2.Todo.fromJson(data, this) : null) as T;
    }
    if (t == List<_i3.Todo>) {
      return (data as List).map((e) => deserialize<_i3.Todo>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Todo) {
      return 'Todo';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Todo') {
      return deserialize<_i2.Todo>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
