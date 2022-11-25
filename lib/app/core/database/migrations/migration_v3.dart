import 'package:app_tarefas/app/core/database/migrations/migration.dart';
import 'package:sqflite/sqflite.dart';

class MigrationV3 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('''
      create table teste(
        id Integer primary key autoincrement,
      )
    ''');
  }

  @override
  void update(Batch batch) {
    batch.execute('''
      create table teste(
        id Integer primary key autoincrement,
      )
    ''');
  }
}
