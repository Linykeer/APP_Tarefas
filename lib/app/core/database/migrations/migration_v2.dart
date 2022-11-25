import 'package:app_tarefas/app/core/database/migrations/migration.dart';
import 'package:sqflite/sqflite.dart';

class MigrationV2 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('''
      create table teste2(
        id Integer primary key autoincrement,
      )
    ''');
  }

  @override
  void update(Batch batch) {
    batch.execute('''
      create table teste2(
        id Integer primary key autoincrement,
      )
    ''');
  }
}
