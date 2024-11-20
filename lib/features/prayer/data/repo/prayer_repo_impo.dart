import 'package:dartz/dartz.dart';
import 'package:hidaya/core/utils/network/api_serves.dart';
import 'package:hidaya/features/prayer/data/models/prayers_models.dart';
import 'package:hidaya/features/prayer/data/repo/prater_repo.dart';

class PrayerRepoImpo implements PraterRepo {
  final ApiServes apiServes;
  final String _baseUrl = 'https://api.aladhan.com/v1/';
  final String _endPoints = 'timingsByCity/15-02-2024?country=egypt&city=cairo';

  PrayerRepoImpo(this.apiServes);
  @override
  Future<Either<String, PrayersModels>> featchAllPrayer() async {
    try {
      // Fetch data from API
      final data = await apiServes.getAyah(baseUrl: _baseUrl, endPoints: _endPoints);

      // Parse JSON to PrayerTimings
      final timings = PrayersModels.fromJson(data['data']['timings']);
      
      return right(timings);
    } catch (e) {
      return left(e.toString());
    }
  }
}
