import 'package:recipely_app_v1/src/domain/repositorires/shared/shared_repository.dart';

abstract class LocalRepository extends SharedRepository {
  dynamic updateData(var model);
  dynamic deleteData(var model);
}
