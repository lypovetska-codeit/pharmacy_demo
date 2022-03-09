import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.freezed.dart';

@freezed
class Page with _$Page {
  factory Page({
    required final int total,
    required final int current,
    required final int next,
    required final int pageSize,
  }) = _Page;
}

extension PageExtension on Page {
  static Page initial() {
    return Page(
      current: 1,
      total: 50,
      next: 2,
      pageSize: 50,
    );
  }
}
