
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../core/network/failure/main_failure.dart';
import '../../domain/repo/message_repo.dart';


@LazySingleton(as: IMessageRepo)
class LandingRepository implements IMessageRepo {

  @override
  Future<Either<MainFailure, List<String>>> getChatHistory() async {
  return  const Left<MainFailure, List<String>>(MainFailure.clientFailure());
    
  }
}
