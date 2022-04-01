import 'package:meta/meta.dart';

abstract class Failures {
  const Failures();
}

// code => 500
@immutable
class InternalServerErrorFailure extends Failures {
  const InternalServerErrorFailure();
}

// code => 400
@immutable
class BadRequestFailure extends Failures {
  const BadRequestFailure();
}

// code => 401
@immutable
class UnauthorizedFailure extends Failures {
  const UnauthorizedFailure();
}

// code => 404
@immutable
class NotFoundFailure extends Failures {
  const NotFoundFailure();
}

// code 405
@immutable
class MethodNotAllowedFailure extends Failures {
  const MethodNotAllowedFailure();
}

// code 408
@immutable
class ConnectionTimeoutFailure extends Failures {
  const ConnectionTimeoutFailure();
}

// socketFailure
@immutable
class NoInternetConnectionFailure extends Failures {
  const NoInternetConnectionFailure();
}

// HttpFailure
@immutable
class MyHttpFailure extends Failures {
  const MyHttpFailure();
}

// FormatFailure
@immutable
class MyFormatFailure extends Failures {
  const MyFormatFailure();
}

@immutable
class UnknownFailure extends Failures {
  const UnknownFailure();
}

@immutable
class CustomFailure extends Failures {
  const CustomFailure({required this.message});

  final String message;
}
