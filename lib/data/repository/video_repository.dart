import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../core/di/injectable.dart';
import '../../core/network/dio_client.dart';
import '../../core/network/failure/main_failure.dart';
import '../../domain/repo/video_repo.dart';

@LazySingleton(as: IVideoRepo)
class LandingRepository implements IVideoRepo {
  final DioClient dio = getIt<DioClient>();

  @override
  Future<Either<MainFailure, List<String>>> getVideoHistory() async {
    return const Left<MainFailure, List<String>>(MainFailure.clientFailure());
  }
}
