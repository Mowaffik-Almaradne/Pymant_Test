import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'pymant_state.dart';

class PymantCubit extends Cubit<PymantState> {
  PymantCubit() : super(PymantInitial());
}
