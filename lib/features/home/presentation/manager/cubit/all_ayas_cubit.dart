import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'all_ayas_state.dart';

class AllAyasCubitCubit extends Cubit<AllAyasCubitState> {
  AllAyasCubitCubit() : super(AllAyasCubitInitial());
}
