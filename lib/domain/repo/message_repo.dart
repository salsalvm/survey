import 'package:dartz/dartz.dart';

import '../../core/network/failure/main_failure.dart';

abstract class IMessageRepo {
  Future<Either<MainFailure, List<String>>> getChatHistory();
}
