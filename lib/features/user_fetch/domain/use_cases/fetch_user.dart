import 'package:dartz/dartz.dart';
import 'package:github_exercise/core/error/app_failures.dart';
import 'package:github_exercise/features/user_fetch/data/models/github_user_model.dart';
import 'package:github_exercise/features/user_fetch/domain/repository/user_fetch_repository.dart';
import 'package:meta/meta.dart';

class FetchUser {
  final FetchUserRepository repository;

  FetchUser({@required this.repository});

  Future<Either<ActionFailure, GithubUser>> call(String login) async {
    return await repository.fetchUser(login);
  }
}
