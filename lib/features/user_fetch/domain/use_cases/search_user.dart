import 'package:dartz/dartz.dart';
import 'package:github_exercise/core/error/app_failures.dart';
import 'package:github_exercise/features/user_fetch/data/models/search_result.dart';
import 'package:github_exercise/features/user_fetch/domain/repository/user_fetch_repository.dart';
import 'package:meta/meta.dart';

class SearchUsers {
  final FetchUserRepository repository;

  SearchUsers({@required this.repository});

  Future<Either<ActionFailure, UserSearchResult>> call(String query) async {
    return await repository.search(query);
  }
}
