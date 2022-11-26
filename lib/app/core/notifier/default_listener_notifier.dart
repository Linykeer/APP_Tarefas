// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:app_tarefas/app/core/notifier/default_change_notifier.dart';
import 'package:app_tarefas/app/core/ui/messages.dart';
import 'package:app_tarefas/app/core/ui/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

class DefaultListenerNotifier {
  final DefaultChangeNotifier changeNotifier;
  DefaultListenerNotifier({
    required this.changeNotifier,
  });

  void listener({required BuildContext context}) {
    changeNotifier.addListener(
      () {
        if (changeNotifier.loading) {
          Loader.show(context, isAppbarOverlay: true);
        } else {
          Loader.hide();
        }

        if (changeNotifier.hasError) {
          Messages.of(context)
              .showError(changeNotifier.error ?? 'Erro Interno');
        } else if (changeNotifier.isSuccess) {}
      },
    );
  }
}

typedef SuccessVoidCallback = void Function(
  DefaultChangeNotifier notifier,
);
