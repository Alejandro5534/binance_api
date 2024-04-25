import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'page_provider.g.dart';

@riverpod
PageController page(PageRef ref) {
  return PageController();
}

@riverpod
class PageCount extends _$PageCount {
  @override
  int build() {
    return 0;
  }

  void changePage(int numberPage) {
    state = numberPage;
  }
}
