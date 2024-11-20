import 'package:bloc/bloc.dart';
import 'package:hidaya/features/prayer/data/models/prayers_models.dart';
import 'package:hidaya/features/prayer/data/repo/prayer_repo_impo.dart';
import 'package:meta/meta.dart';

part 'cubit_prayer_state.dart';

class CubitPrayerCubit extends Cubit<CubitPrayerState> {
  CubitPrayerCubit(this.prayerRepoImpo) : super(AllPrayerInitial());
  final PrayerRepoImpo prayerRepoImpo;
  getAllPrayer() async {
    emit(AllPrayerLoading());
    var values = await prayerRepoImpo.featchAllPrayer();
    values.fold((error) {
      emit(AllPrayerError(error));
    }, (prayer){
      emit(AllPrayerLoaddid(prayer));
    });
  }
}
