import 'package:dartz/dartz.dart';
import 'package:hidaya/features/prayer/data/models/prayers_models.dart';

abstract class PraterRepo {
  Future<Either<String, PrayersModels>> featchAllPrayer();
}
