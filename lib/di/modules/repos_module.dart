import 'package:pharmacy/data/repo/remote_repo_impl.dart';
import 'package:pharmacy/data/repo/user_repo_impl.dart';
import 'package:pharmacy/domain/repo/remote_repo.dart';
import 'package:pharmacy/domain/repo/user_repo.dart';
import 'package:vicodin/vicodin.dart';

Module reposModule() => moduleOf(
      (r) {
        r.singleton<RemoteRepo>(
          (r) => RemoteRepoImpl(),
        );
        r.singleton<UserRepo>(
          (r) => UserRepoImpl(),
        );
      },
    );
