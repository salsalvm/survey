import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/network/failure/main_failure.dart';
import '../../domain/repo/video_repo.dart';

@LazySingleton(as: IVideoRepo)
class LandingRepository implements IVideoRepo {

  @override
  Future<Either<MainFailure, List<String>>> getVideoHistory() async {
    return const Left<MainFailure, List<String>>(MainFailure.clientFailure());
  }
}
