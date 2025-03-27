
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/di/injectable.dart';
import '../../core/network/dio_client.dart';
import '../../core/network/failure/main_failure.dart';
import '../../domain/repo/message_repo.dart';


@LazySingleton(as: IMessageRepo)
class LandingRepository implements IMessageRepo {
  final DioClient dio = getIt<DioClient>();

  @override
  Future<Either<MainFailure, List<String>>> getChatHistory() async {
  return  const Left<MainFailure, List<String>>(MainFailure.clientFailure());
    
  }
}
