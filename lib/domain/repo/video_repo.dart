import 'package:dartz/dartz.dart';

import '../../core/network/failure/main_failure.dart';


abstract class IVideoRepo {
  Future<Either<MainFailure, List<String>>> getVideoHistory();
}
