
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';
class Utils {
  static EventTransformer<E> debounceSequential<E>(Duration duration) {
    return (events, mapper) {
      return sequential<E>().call(events.debounceTime(duration), mapper);
    };
  }
}
