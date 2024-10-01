import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class TodoDB {
  static final _dbName = 'todo.db';
  static final _tableName = 'todos';
  static final _columnId = 'id';
  static final _columnTitle = 'title';
  static final _columnDescription = 'description';
  static final _columnDate = 'date';

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  _initDatabase() async {
    final db = await openDatabase(
      join(await getDatabasesPath(), _dbName),
      onCreate: (db, version) async {
        await db.execute(
            'CREATE TABLE $_tableName ('
                '$_columnId INTEGER PRIMARY KEY NOT NULL , '
                '$_columnTitle TEXT NOT NULL , '
                '$_columnDescription TEXT NOT NULL , '
                '$_columnDate DATE)');
      },
      version: 1,
    );
  }
}
